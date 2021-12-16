import 'dart:convert';

import 'package:get/get.dart';

class RxRepository {
  final id = 161755286.obs;
  final nodeId = 'MDEwOlJlcG9zaXRvcnkxNjE3NTUyODY='.obs;
  final name = '24-01-GestionDUtilisateurs-SpringData'.obs;
  final fullName = 'godzyken/24-01-GestionDUtilisateurs-SpringData'.obs;
  final private = false.obs;
  final owner = Owner().obs;
  final htmlUrl =
      'https://github.com/godzyken/24-01-GestionDUtilisateurs-SpringData'.obs;
  final description = null?.obs;
  final fork = false.obs;
  final url =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData'
          .obs;
  final forksUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/forks'
          .obs;
  final keysUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/keys{/key_id}'
          .obs;
  final collaboratorsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/collaborators{/collaborator}'
          .obs;
  final teamsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/teams'
          .obs;
  final hooksUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/hooks'
          .obs;
  final issueEventsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/issues/events{/number}'
          .obs;
  final eventsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/events'
          .obs;
  final assigneesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/assignees{/user}'
          .obs;
  final branchesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/branches{/branch}'
          .obs;
  final tagsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/tags'
          .obs;
  final blobsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/git/blobs{/sha}'
          .obs;
  final gitTagsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/git/tags{/sha}'
          .obs;
  final gitRefsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/git/refs{/sha}'
          .obs;
  final treesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/git/trees{/sha}'
          .obs;
  final statusesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/statuses/{sha}'
          .obs;
  final languagesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/languages'
          .obs;
  final stargazersUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/stargazers'
          .obs;
  final contributorsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/contributors'
          .obs;
  final subscribersUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/subscribers'
          .obs;
  final subscriptionUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/subscription'
          .obs;
  final commitsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/commits{/sha}'
          .obs;
  final gitCommitsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/git/commits{/sha}'
          .obs;
  final commentsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/comments{/number}'
          .obs;
  final issueCommentUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/issues/comments{/number}'
          .obs;
  final contentsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/contents/{+path}'
          .obs;
  final compareUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/compare/{base}...{head}'
          .obs;
  final mergesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/merges'
          .obs;
  final archiveUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/{archive_format}{/ref}'
          .obs;
  final downloadsUrl =
      ' "https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/downloads",'
          .obs;
  final issuesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/issues{/number}'
          .obs;
  final pullsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/pulls{/number}'
          .obs;
  final milestonesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/milestones{/number}'
          .obs;
  final notificationsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/notifications{?since,all,participating}'
          .obs;
  final labelsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/labels{/name}'
          .obs;
  final releasesUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/releases{/id}'
          .obs;
  final deploymentsUrl =
      'https://api.github.com/repos/godzyken/24-01-GestionDUtilisateurs-SpringData/deployments'
          .obs;
  final createdAt = '2018-12-14T08:32:57Z'.obs;
  final updatedAt = '2018-12-14T08:33:14Z'.obs;
  final pushedAt = '2018-12-14T08:33:11Z'.obs;
  final gitUrl =
      'git://github.com/godzyken/24-01-GestionDUtilisateurs-SpringData.git'.obs;
  final sshUrl =
      'git@github.com:godzyken/24-01-GestionDUtilisateurs-SpringData.git'.obs;
  final cloneUrl =
      'https://github.com/godzyken/24-01-GestionDUtilisateurs-SpringData.git'
          .obs;
  final svnUrl =
      'https://github.com/godzyken/24-01-GestionDUtilisateurs-SpringData'.obs;
  final homepage = null?.obs;
  final size = 53134.obs;
  final stargazersCount = 0.obs;
  final watchersCount = 0.obs;
  final language = null?.obs;
  final hasIssues = true.obs;
  final hasProjects = true.obs;
  final hasDownloads = true.obs;
  final hasWiki = true.obs;
  final hasPages = false.obs;
  final forksCount = 2.obs;
  final mirrorUrl = null?.obs;
  final archived = false.obs;
  final disabled = false.obs;
  final openIssuesCount = 0.obs;
  final license = null?.obs;
  final allowForking = true.obs;
  final isTemplate = false.obs;
  final visibility = 'public'.obs;
  final forks = 2.obs;
  final openIssues = 0.obs;
  final watchers = 0.obs;
  final defaultBranch = 'master'.obs;
  final tempCloneToken = null?.obs;
  final networkCount = null?.obs;
  final subscribersCount = null?.obs;
  final topics = [].obs;
}

class Repository {
  final rx = RxRepository();

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get nodeId => rx.nodeId.value;

  set nodeId(value) => rx.nodeId.value = value;

  get name => rx.name.value;

  set name(value) => rx.name.value = value;

  get fullName => rx.fullName.value;

  set fullName(value) => rx.fullName.value = value;

  get private => rx.private.value;

  set private(value) => rx.private.value = value;

  get owner => rx.owner.value;

  set owner(value) => rx.owner.value = value;

  get htmlUrl => rx.htmlUrl.value;

  set htmlUrl(value) => rx.htmlUrl.value = value;

  get description => rx.description?.value;

  set description(value) => rx.description?.value = value;

  get fork => rx.fork.value;

  set fork(value) => rx.fork.value = value;

  get url => rx.url.value;

  set url(value) => rx.url.value = value;

  get forksUrl => rx.forksUrl.value;

  set forksUrl(value) => rx.forksUrl.value = value;

  get keysUrl => rx.keysUrl.value;

  set keysUrl(value) => rx.keysUrl.value = value;

  get collaboratorsUrl => rx.collaboratorsUrl.value;

  set collaboratorsUrl(value) => rx.collaboratorsUrl.value = value;

  get teamsUrl => rx.teamsUrl.value;

  set teamsUrl(value) => rx.teamsUrl.value = value;

  get hooksUrl => rx.hooksUrl.value;

  set hooksUrl(value) => rx.hooksUrl.value = value;

  get issueEventsUrl => rx.issueEventsUrl.value;

  set issueEventsUrl(value) => rx.issueEventsUrl.value = value;

  get eventsUrl => rx.eventsUrl.value;

  set eventsUrl(value) => rx.eventsUrl.value = value;

  get assigneesUrl => rx.assigneesUrl.value;

  set assigneesUrl(value) => rx.assigneesUrl.value = value;

  get branchesUrl => rx.branchesUrl.value;

  set branchesUrl(value) => rx.branchesUrl.value = value;

  get tagsUrl => rx.tagsUrl.value;

  set tagsUrl(value) => rx.tagsUrl.value = value;

  get blobsUrl => rx.blobsUrl.value;

  set blobsUrl(value) => rx.blobsUrl.value = value;

  get gitTagsUrl => rx.gitTagsUrl.value;

  set gitTagsUrl(value) => rx.gitTagsUrl.value = value;

  get gitRefsUrl => rx.gitRefsUrl.value;

  set gitRefsUrl(value) => rx.gitRefsUrl.value = value;

  get treesUrl => rx.treesUrl.value;

  set treesUrl(value) => rx.treesUrl.value = value;

  get statusesUrl => rx.statusesUrl.value;

  set statusesUrl(value) => rx.statusesUrl.value = value;

  get languagesUrl => rx.languagesUrl.value;

  set languagesUrl(value) => rx.languagesUrl.value = value;

  get stargazersUrl => rx.stargazersUrl.value;

  set stargazersUrl(value) => rx.stargazersUrl.value = value;

  get contributorsUrl => rx.contributorsUrl.value;

  set contributorsUrl(value) => rx.contributorsUrl.value = value;

  get subscribersUrl => rx.subscribersUrl.value;

  set subscribersUrl(value) => rx.subscribersUrl.value = value;

  get subscriptionUrl => rx.subscriptionUrl.value;

  set subscriptionUrl(value) => rx.subscriptionUrl.value = value;

  get commitsUrl => rx.commitsUrl.value;

  set commitsUrl(value) => rx.commitsUrl.value = value;

  get gitCommitsUrl => rx.gitCommitsUrl.value;

  set gitCommitsUrl(value) => rx.gitCommitsUrl.value = value;

  get commentsUrl => rx.commentsUrl.value;

  set commentsUrl(value) => rx.commentsUrl.value = value;

  get issueCommentUrl => rx.issueCommentUrl.value;

  set issueCommentUrl(value) => rx.issueCommentUrl.value = value;

  get contentsUrl => rx.contentsUrl.value;

  set contentsUrl(value) => rx.contentsUrl.value = value;

  get compareUrl => rx.compareUrl.value;

  set compareUrl(value) => rx.compareUrl.value = value;

  get mergesUrl => rx.mergesUrl.value;

  set mergesUrl(value) => rx.mergesUrl.value = value;

  get archiveUrl => rx.archiveUrl.value;

  set archiveUrl(value) => rx.archiveUrl.value = value;

  get downloadsUrl => rx.downloadsUrl.value;

  set downloadsUrl(value) => rx.downloadsUrl.value = value;

  get issuesUrl => rx.issuesUrl.value;

  set issuesUrl(value) => rx.issuesUrl.value = value;

  get pullsUrl => rx.pullsUrl.value;

  set pullsUrl(value) => rx.pullsUrl.value = value;

  get milestonesUrl => rx.milestonesUrl.value;

  set milestonesUrl(value) => rx.milestonesUrl.value = value;

  get notificationsUrl => rx.notificationsUrl.value;

  set notificationsUrl(value) => rx.notificationsUrl.value = value;

  get labelsUrl => rx.labelsUrl.value;

  set labelsUrl(value) => rx.labelsUrl.value = value;

  get releasesUrl => rx.releasesUrl.value;

  set releasesUrl(value) => rx.releasesUrl.value = value;

  get deploymentsUrl => rx.deploymentsUrl.value;

  set deploymentsUrl(value) => rx.deploymentsUrl.value = value;

  get createdAt => rx.createdAt.value;

  set createdAt(value) => rx.createdAt.value = value;

  get updatedAt => rx.updatedAt.value;

  set updatedAt(value) => rx.updatedAt.value = value;

  get pushedAt => rx.pushedAt.value;

  set pushedAt(value) => rx.pushedAt.value = value;

  get gitUrl => rx.gitUrl.value;

  set gitUrl(value) => rx.gitUrl.value = value;

  get sshUrl => rx.sshUrl.value;

  set sshUrl(value) => rx.sshUrl.value = value;

  get cloneUrl => rx.cloneUrl.value;

  set cloneUrl(value) => rx.cloneUrl.value = value;

  get svnUrl => rx.svnUrl.value;

  set svnUrl(value) => rx.svnUrl.value = value;

  get homepage => rx.homepage?.value;

  set homepage(value) => rx.homepage?.value = value;

  get size => rx.size.value;

  set size(value) => rx.size.value = value;

  get stargazersCount => rx.stargazersCount.value;

  set stargazersCount(value) => rx.stargazersCount.value = value;

  get watchersCount => rx.watchersCount.value;

  set watchersCount(value) => rx.watchersCount.value = value;

  get language => rx.language?.value;

  set language(value) => rx.language?.value = value;

  get hasIssues => rx.hasIssues.value;

  set hasIssues(value) => rx.hasIssues.value = value;

  get hasProjects => rx.hasProjects.value;

  set hasProjects(value) => rx.hasProjects.value = value;

  get hasDownloads => rx.hasDownloads.value;

  set hasDownloads(value) => rx.hasDownloads.value = value;

  get hasWiki => rx.hasWiki.value;

  set hasWiki(value) => rx.hasWiki.value = value;

  get hasPages => rx.hasPages.value;

  set hasPages(value) => rx.hasPages.value = value;

  get forksCount => rx.forksCount.value;

  set forksCount(value) => rx.forksCount.value = value;

  get mirrorUrl => rx.mirrorUrl?.value;

  set mirrorUrl(value) => rx.mirrorUrl?.value = value;

  get archived => rx.archived.value;

  set archived(value) => rx.archived.value = value;

  get disabled => rx.disabled.value;

  set disabled(value) => rx.disabled.value = value;

  get openIssuesCount => rx.openIssuesCount.value;

  set openIssuesCount(value) => rx.openIssuesCount.value = value;

  get license => rx.license?.value;

  set license(value) => rx.license?.value = value;

  get allowForking => rx.allowForking.value;

  set allowForking(value) => rx.allowForking.value = value;

  get isTemplate => rx.isTemplate.value;

  set isTemplate(value) => rx.isTemplate.value = value;

  get visibility => rx.visibility.value;

  set visibility(value) => rx.visibility.value = value;

  get forks => rx.forks.value;

  set forks(value) => rx.forks.value = value;

  get openIssues => rx.openIssues.value;

  set openIssues(value) => rx.openIssues.value = value;

  get watchers => rx.watchers.value;

  set watchers(value) => rx.watchers.value = value;

  get defaultBranch => rx.defaultBranch.value;

  set defaultBranch(value) => rx.defaultBranch.value = value;

  get tempCloneToken => rx.tempCloneToken?.value;

  set tempCloneToken(value) => rx.tempCloneToken?.value = value;

  get networkCount => rx.networkCount?.value;

  set networkCount(value) => rx.networkCount?.value = value;

  get subscribersCount => rx.subscribersCount?.value;

  set subscribersCount(value) => rx.subscribersCount?.value = value;

  get topics => rx.topics.value;

  set topics(value) => rx.topics.value = value;

  Repository(
      {id,
      nodeId,
      name,
      fullName,
      private,
      owner,
      htmlUrl,
      description,
      fork,
      url,
      forksUrl,
      keysUrl,
      collaboratorsUrl,
      teamsUrl,
      hooksUrl,
      issueEventsUrl,
      eventsUrl,
      assigneesUrl,
      branchesUrl,
      tagsUrl,
      blobsUrl,
      gitTagsUrl,
      gitRefsUrl,
      treesUrl,
      statusesUrl,
      languagesUrl,
      stargazersUrl,
      contributorsUrl,
      subscribersUrl,
      subscriptionUrl,
      commitsUrl,
      gitCommitsUrl,
      commentsUrl,
      issueCommentUrl,
      contentsUrl,
      compareUrl,
      mergesUrl,
      archiveUrl,
      downloadsUrl,
      issuesUrl,
      pullsUrl,
      milestonesUrl,
      notificationsUrl,
      labelsUrl,
      releasesUrl,
      deploymentsUrl,
      createdAt,
      updatedAt,
      pushedAt,
      gitUrl,
      sshUrl,
      cloneUrl,
      svnUrl,
      homepage,
      size,
      stargazersCount,
      watchersCount,
      language,
      hasIssues,
      hasProjects,
      hasDownloads,
      hasWiki,
      hasPages,
      forksCount,
      mirrorUrl,
      archived,
      disabled,
      openIssuesCount,
      license,
      allowForking,
      isTemplate,
      visibility,
      forks,
      openIssues,
      watchers,
      defaultBranch,
      tempCloneToken,
      networkCount,
      subscribersCount,
      topics});

  Repository.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['nodeId'];
    name = json['name'];
    fullName = json['fullName'];
    private = json['private'];
    owner = json['owner'] != null ? Owner?.fromJson(json['owner']) : null;
    htmlUrl = json['htmlUrl'];
    description = description ?? json['description'];
    fork = json['fork'];
    url = json['url'];
    forksUrl = json['forksUrl'];
    keysUrl = json['keysUrl'];
    collaboratorsUrl = json['collaboratorsUrl'];
    teamsUrl = json['teamsUrl'];
    hooksUrl = json['hooksUrl'];
    issueEventsUrl = json['issueEventsUrl'];
    eventsUrl = json['eventsUrl'];
    assigneesUrl = json['assigneesUrl'];
    branchesUrl = json['branchesUrl'];
    tagsUrl = json['tagsUrl'];
    blobsUrl = json['blobsUrl'];
    gitTagsUrl = json['gitTagsUrl'];
    gitRefsUrl = json['gitRefsUrl'];
    treesUrl = json['treesUrl'];
    statusesUrl = json['statusesUrl'];
    languagesUrl = json['languagesUrl'];
    stargazersUrl = json['stargazersUrl'];
    contributorsUrl = json['contributorsUrl'];
    subscribersUrl = json['subscribersUrl'];
    subscriptionUrl = json['subscriptionUrl'];
    commitsUrl = json['commitsUrl'];
    gitCommitsUrl = json['gitCommitsUrl'];
    commentsUrl = json['commentsUrl'];
    issueCommentUrl = json['issueCommentUrl'];
    contentsUrl = json['contentsUrl'];
    compareUrl = json['compareUrl'];
    mergesUrl = json['merges_url'];
    archiveUrl = json['archive_url'];
    downloadsUrl = json['downloads_url'];
    issuesUrl = json['issues_url'];
    pullsUrl = json['pulls_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    labelsUrl = json['labels_url'];
    releasesUrl = json['releases_url'];
    deploymentsUrl = json['deployments_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    gitUrl = json['git_url'];
    sshUrl = json['ssh_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    homepage = homepage ?? json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = language ?? json['language'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasDownloads = json['has_downloads'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    forksCount = json['forks_count'];
    mirrorUrl = mirrorUrl ?? json['mirror_url'];
    archived = json['archived'];
    disabled = json['disabled'];
    openIssuesCount = json['open_issues_count'];
    license = license ?? json['license'];
    allowForking = json['allow_forking'];
    isTemplate = json['is_template'];
    visibility = json['visibility'];
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    defaultBranch = json['default_branch'];
    tempCloneToken = tempCloneToken ?? json['temp_clone_token'];
    networkCount = networkCount ?? json['network_count'];
    subscribersCount = subscribersCount ?? json['subscribers_count'];
    topics = json['topics'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nodeId'] = nodeId;
    data['name'] = name;
    data['fullName'] = fullName;
    data['private'] = private;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['htmlUrl'] = htmlUrl;
    if (description != null) {
      data['description'] = description;
    }
    data['fork'] = fork;
    data['url'] = url;
    data['forksUrl'] = forksUrl;
    data['keysUrl'] = keysUrl;
    data['collaboratorsUrl'] = collaboratorsUrl;
    data['teamsUrl'] = teamsUrl;
    data['hooksUrl'] = hooksUrl;
    data['issueEventsUrl'] = issueEventsUrl;
    data['eventsUrl'] = eventsUrl;
    data['assigneesUrl'] = assigneesUrl;
    data['branchesUrl'] = branchesUrl;
    data['tagsUrl'] = tagsUrl;
    data['blobsUrl'] = blobsUrl;
    data['gitTagsUrl'] = gitTagsUrl;
    data['gitRefsUrl'] = gitRefsUrl;
    data['treesUrl'] = treesUrl;
    data['statusesUrl'] = statusesUrl;
    data['languagesUrl'] = languagesUrl;
    data['stargazersUrl'] = stargazersUrl;
    data['contributorsUrl'] = contributorsUrl;
    data['subscribersUrl'] = subscribersUrl;
    data['subscriptionUrl'] = subscriptionUrl;
    data['commitsUrl'] = commitsUrl;
    data['gitCommitsUrl'] = gitCommitsUrl;
    data['commentsUrl'] = commentsUrl;
    data['issueCommentUrl'] = issueCommentUrl;
    data['contentsUrl'] = contentsUrl;
    data['compareUrl'] = compareUrl;
    data['merges_url'] = mergesUrl;
    data['archive_url'] = archiveUrl;
    data['downloads_url'] = downloadsUrl;
    data['issues_url'] = issuesUrl;
    data['pulls_url'] = pullsUrl;
    data['milestones_url'] = milestonesUrl;
    data['notifications_url'] = notificationsUrl;
    data['labels_url'] = labelsUrl;
    data['releases_url'] = releasesUrl;
    data['deployments_url'] = deploymentsUrl;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pushed_at'] = pushedAt;
    data['git_url'] = gitUrl;
    data['ssh_url'] = sshUrl;
    data['clone_url'] = cloneUrl;
    data['svn_url'] = svnUrl;
    if (homepage != null) {
      data['homepage'] = homepage;
    }
    data['size'] = size;
    data['stargazers_count'] = stargazersCount;
    data['watchers_count'] = watchersCount;
    data['language'] = language;
    data['has_issues'] = hasIssues;
    data['has_projects'] = hasProjects;
    data['has_downloads'] = hasDownloads;
    data['has_wiki'] = hasWiki;
    data['has_pages'] = hasPages;
    data['forks_count'] = forksCount;
    if (mirrorUrl != null) {
      data['mirror_url'] = mirrorUrl;
    }
    data['archived'] = archived;
    data['disabled'] = disabled;
    data['open_issues_count'] = openIssuesCount;
    if (license != null) {
      data['license'] = license;
    }
    data['allow_forking'] = allowForking;
    data['is_template'] = isTemplate;
    data['visibility'] = visibility;
    data['forks'] = forks;
    data['open_issues'] = openIssues;
    data['watchers'] = watchers;
    data['default_branch'] = defaultBranch;
    if (tempCloneToken != null) {
      data['temp_clone_token'] = tempCloneToken;
    }
    if (networkCount != null) {
      data['network_count'] = networkCount;
    }
    if (subscribersCount != null) {
      data['subscribers_count'] = subscribersCount;
    }
    data['topics'] = topics;
    return data;
  }
}

class RxOwner {
  final login = 'godzyken'.obs;
  final id = 33176898.obs;
  final nodeId = 'MDQ6VXNlcjMzMTc2ODk4'.obs;
  final avatarUrl = 'https://avatars.githubusercontent.com/u/33176898?v=4'.obs;
  final gravatarId = ''.obs;
  final url = 'https://api.github.com/users/godzyken'.obs;
  final htmlUrl = 'https://github.com/godzyken'.obs;
  final followersUrl = 'https://api.github.com/users/godzyken/followers'.obs;
  final followingUrl =
      'https://api.github.com/users/godzyken/following{/other_user}'.obs;
  final gistsUrl = 'https://api.github.com/users/godzyken/gists{/gist_id}'.obs;
  final starredUrl =
      'https://api.github.com/users/godzyken/starred{/owner}{/repo}'.obs;
  final subscriptionsUrl =
      'https://api.github.com/users/godzyken/subscriptions'.obs;
  final organizationsUrl = 'https://api.github.com/users/godzyken/orgs'.obs;
  final reposUrl = 'https://api.github.com/users/godzyken/repos'.obs;
  final eventsUrl =
      'https://api.github.com/users/godzyken/events{/privacy}'.obs;
  final receivedEventsUrl =
      'https://api.github.com/users/godzyken/received_events'.obs;
  final type = 'User'.obs;
  final siteAdmin = false.obs;
}

class Owner {
  final rx = RxOwner();

  get login => rx.login.value;

  set login(value) => rx.login.value = value;

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get nodeId => rx.nodeId.value;

  set nodeId(value) => rx.nodeId.value = value;

  get avatarUrl => rx.avatarUrl.value;

  set avatarUrl(value) => rx.avatarUrl.value = value;

  get gravatarId => rx.gravatarId.value;

  set gravatarId(value) => rx.gravatarId.value = value;

  get url => rx.url.value;

  set url(value) => rx.url.value = value;

  get htmlUrl => rx.htmlUrl.value;

  set htmlUrl(value) => rx.htmlUrl.value = value;

  get followersUrl => rx.followersUrl.value;

  set followersUrl(value) => rx.followersUrl.value = value;

  get followingUrl => rx.followingUrl.value;

  set followingUrl(value) => rx.followingUrl.value = value;

  get gistsUrl => rx.gistsUrl.value;

  set gistsUrl(value) => rx.gistsUrl.value = value;

  get starredUrl => rx.starredUrl.value;

  set starredUrl(value) => rx.starredUrl.value = value;

  get subscriptionsUrl => rx.subscriptionsUrl.value;

  set subscriptionsUrl(value) => rx.subscriptionsUrl.value = value;

  get organizationsUrl => rx.organizationsUrl.value;

  set organizationsUrl(value) => rx.organizationsUrl.value = value;

  get reposUrl => rx.reposUrl.value;

  set reposUrl(value) => rx.reposUrl.value = value;

  get eventsUrl => rx.eventsUrl.value;

  set eventsUrl(value) => rx.eventsUrl.value = value;

  get receivedEventsUrl => rx.receivedEventsUrl.value;

  set receivedEventsUrl(value) => rx.receivedEventsUrl.value = value;

  get type => rx.type.value;

  set type(value) => rx.type.value = value;

  get siteAdmin => rx.siteAdmin.value;

  set siteAdmin(value) => rx.siteAdmin.value = value;

  Owner(
      {login,
      id,
      nodeId,
      avatarUrl,
      gravatarId,
      url,
      htmlUrl,
      followersUrl,
      followingUrl,
      gistsUrl,
      starredUrl,
      subscriptionsUrl,
      organizationsUrl,
      reposUrl,
      eventsUrl,
      receivedEventsUrl,
      type,
      siteAdmin});

  Owner.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['nodeId'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['htmlUrl'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['eventsUrl'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['login'] = login;
    data['id'] = id;
    data['nodeId'] = nodeId;
    data['avatar_url'] = avatarUrl;
    data['gravatar_id'] = gravatarId;
    data['url'] = url;
    data['htmlUrl'] = htmlUrl;
    data['followers_url'] = followersUrl;
    data['following_url'] = followingUrl;
    data['gists_url'] = gistsUrl;
    data['starred_url'] = starredUrl;
    data['subscriptions_url'] = subscriptionsUrl;
    data['organizations_url'] = organizationsUrl;
    data['repos_url'] = reposUrl;
    data['eventsUrl'] = eventsUrl;
    data['received_events_url'] = receivedEventsUrl;
    data['type'] = type;
    data['site_admin'] = siteAdmin;
    return data;
  }
}

List<Repository?> demoRepoFromJson(String? str) => List<Repository?>.from(
    jsonDecode(str!).map((x) => Repository?.fromJson(x)));

String? demoRepoToJson(List<Repository?> data) =>
    json.encode(List<dynamic>.from(data.map((e) => e!.toJson())));
