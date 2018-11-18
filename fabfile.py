from fabric import local, abort, run, roles, cd, env, sudo, lcd, env, settings
from fabric.contrib.console import confirm

env.roledefs = {
    'local': ['localhost'],
    'production': ['root@95.85.60.61']
}

env.roledefs['all'] = [i for j in env.roledefs.values() for i in j]


def commit(message='updating...'):
    """
    commit changes to staging area
    :param message:
    :return:
    """
    local("git add --all")
    with settings(warn_only=True):
        result = local("git commit -m '%s'" % message, capture=True)
        if result.failed and not confirm("Tests failed. Continue anyway?"):
            abort("Aborting at your behest")


def pull():
    """
    update environment
    :return:
    """
    local("git pull")


def push(message='updating...', branch='master', should_commit=True):
    """
    push changes
    :param message
    :return:
    """
    if should_commit is True:
        commit(message)
    local("git push -u origin %s" % branch)


def run():
    """
    	run application
    """
    local('nodemon app.js')


def deploy():
    """
    update production environment
    :return:
    """
    with cd('/opt/therapists'):
        sudo('git pull')
        run('pm2 restart all')

