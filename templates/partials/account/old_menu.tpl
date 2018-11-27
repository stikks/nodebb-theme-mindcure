<div class="btn-group account-fab bottom-sheet">
	<button type="button" class="fab dropdown-toggle" id="<!-- IF isSelf -->pc-menu<!-- ENDIF isSelf -->" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<!-- IF !banned -->
		<!-- IF !config.disableChat -->
		<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
			<a component="account/chat" href="#">[[user:chat_with, {username}]]</a>
		</li>
		<li>
			<a component="account/new-chat" href="#">[[user:new_chat_with, {username}]]</a>
		</li>
		<!-- ENDIF !config.disableChat -->
		<li>
			<a component="account/flag" href="#">[[user:flag-profile]]</a>
		</li>
		<li>
			<a component="account/block" href="#"><!-- IF !../isBlocked -->[[user:block_user]]<!-- ELSE -->[[user:unblock_user]]<!-- END --></a>
		</li>
		<li class="divider"></li>
		<!-- ENDIF !banned -->
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
		<li id="pc-menu">
			<a href="{config.relative_path}/user/{userslug}" class="inline-block" id="profile">[[user:profile]]</a>
		</li>
		<!-- IF showHidden -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
		<!-- ENDIF showHidden -->

		<!-- IF !isSelf -->
		<!-- IF canBan -->
		<li id="pc-menu" class="<!-- IF banned -->hide<!-- ENDIF banned -->">
			<a component="account/ban" href="#">[[user:ban_account]]</a>
		</li>
		<li id="pc-menu" class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
			<a component="account/unban" href="#">[[user:unban_account]]</a>
		</li>
		<!-- ENDIF canBan -->
		<!-- IF isAdmin -->
		<li id="pc-menu">
			<a component="account/delete" href="#" class="">[[user:delete_account]]</a>
		</li>
		<!-- ENDIF isAdmin -->
		<!-- ENDIF !isSelf -->

		<li id="pc-menu" class="divider"></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a></li>
		<!-- IF showHidden -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/blocks">[[user:blocks]]</a></li>
		<!-- ENDIF showHidden -->
		<li id="pc-menu" class="divider"></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/topics">[[global:topics]]</a></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a></li>
		<!-- IF !reputation:disabled -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/best">[[global:best]]</a></li>
		<!-- ENDIF !reputation:disabled -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/groups">[[global:header.groups]]</a></li>

		<!-- IF showHidden -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/categories">[[user:watched_categories]]</a></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/bookmarks">[[user:bookmarks]]</a></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/watched">[[user:watched]]</a></li>
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/ignored">[[user:ignored]]</a></li>
		<!-- IF !reputation:disabled -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/upvoted">[[global:upvoted]]</a></li>
		<!-- IF !downvote:disabled -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/downvoted">[[global:downvoted]]</a></li>
		<!-- ENDIF !downvote:disabled -->
		<!-- ENDIF !reputation:disabled -->
		<li id="pc-menu"><a href="{config.relative_path}/user/{userslug}/uploads">[[global:uploads]]</a></li>
		<!-- ENDIF showHidden -->

		<!-- BEGIN profile_links -->
		<!-- IF @first -->
		<li id="pc-menu" class="divider"></li>
		<!-- ENDIF @first -->
		<li id="{profile_links.id} pc-menu" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a href="{config.relative_path}/user/{userslug}/{profile_links.route}"><!-- IF ../icon --><i class="fa fa-fw {profile_links.icon}"></i> <!-- END -->{profile_links.name}</a></li>
		<!-- END profile_links -->
        
        <li id="pc-menu"><a href="https://mindcureglobal.com/terms">Forum Policy</a></li>
    </ul>
</div>