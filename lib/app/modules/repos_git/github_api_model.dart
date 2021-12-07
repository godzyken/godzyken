class GithubApi {
  String? currentUserUrl;
  String? currentUserAuthorizationsHtmlUrl;
  String? authorizationsUrl;
  String? codeSearchUrl;
  String? commitSearchUrl;
  String? emailsUrl;
  String? emojisUrl;
  String? eventsUrl;
  String? feedsUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? hubUrl;
  String? issueSearchUrl;
  String? issuesUrl;
  String? keysUrl;
  String? labelSearchUrl;
  String? notificationsUrl;
  String? organizationUrl;
  String? organizationRepositoriesUrl;
  String? organizationTeamsUrl;
  String? publicGistsUrl;
  String? rateLimitUrl;
  String? repositoryUrl;
  String? repositorySearchUrl;
  String? currentUserRepositoriesUrl;
  String? starredUrl;
  String? starredGistsUrl;
  String? topicSearchUrl;
  String? userUrl;
  String? userOrganizationsUrl;
  String? userRepositoriesUrl;
  String? userSearchUrl;

  GithubApi(
      {this.currentUserUrl,
      this.currentUserAuthorizationsHtmlUrl,
      this.authorizationsUrl,
      this.codeSearchUrl,
      this.commitSearchUrl,
      this.emailsUrl,
      this.emojisUrl,
      this.eventsUrl,
      this.feedsUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.hubUrl,
      this.issueSearchUrl,
      this.issuesUrl,
      this.keysUrl,
      this.labelSearchUrl,
      this.notificationsUrl,
      this.organizationUrl,
      this.organizationRepositoriesUrl,
      this.organizationTeamsUrl,
      this.publicGistsUrl,
      this.rateLimitUrl,
      this.repositoryUrl,
      this.repositorySearchUrl,
      this.currentUserRepositoriesUrl,
      this.starredUrl,
      this.starredGistsUrl,
      this.topicSearchUrl,
      this.userUrl,
      this.userOrganizationsUrl,
      this.userRepositoriesUrl,
      this.userSearchUrl});

  GithubApi.fromJson(Map<String, dynamic> json) {
    currentUserUrl = json['current_user_url'];
    currentUserAuthorizationsHtmlUrl =
        json['current_user_authorizations_html_url'];
    authorizationsUrl = json['authorizations_url'];
    codeSearchUrl = json['code_search_url'];
    commitSearchUrl = json['commit_search_url'];
    emailsUrl = json['emails_url'];
    emojisUrl = json['emojis_url'];
    eventsUrl = json['events_url'];
    feedsUrl = json['feeds_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    hubUrl = json['hub_url'];
    issueSearchUrl = json['issue_search_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelSearchUrl = json['label_search_url'];
    notificationsUrl = json['notifications_url'];
    organizationUrl = json['organization_url'];
    organizationRepositoriesUrl = json['organization_repositories_url'];
    organizationTeamsUrl = json['organization_teams_url'];
    publicGistsUrl = json['public_gists_url'];
    rateLimitUrl = json['rate_limit_url'];
    repositoryUrl = json['repository_url'];
    repositorySearchUrl = json['repository_search_url'];
    currentUserRepositoriesUrl = json['current_user_repositories_url'];
    starredUrl = json['starred_url'];
    starredGistsUrl = json['starred_gists_url'];
    topicSearchUrl = json['topic_search_url'];
    userUrl = json['user_url'];
    userOrganizationsUrl = json['user_organizations_url'];
    userRepositoriesUrl = json['user_repositories_url'];
    userSearchUrl = json['user_search_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['current_user_url'] = currentUserUrl;
    data['current_user_authorizations_html_url'] =
        currentUserAuthorizationsHtmlUrl;
    data['authorizations_url'] = authorizationsUrl;
    data['code_search_url'] = codeSearchUrl;
    data['commit_search_url'] = commitSearchUrl;
    data['emails_url'] = emailsUrl;
    data['emojis_url'] = emojisUrl;
    data['events_url'] = eventsUrl;
    data['feeds_url'] = feedsUrl;
    data['followers_url'] = followersUrl;
    data['following_url'] = followingUrl;
    data['gists_url'] = gistsUrl;
    data['hub_url'] = hubUrl;
    data['issue_search_url'] = issueSearchUrl;
    data['issues_url'] = issuesUrl;
    data['keys_url'] = keysUrl;
    data['label_search_url'] = labelSearchUrl;
    data['notifications_url'] = notificationsUrl;
    data['organization_url'] = organizationUrl;
    data['organization_repositories_url'] = organizationRepositoriesUrl;
    data['organization_teams_url'] = organizationTeamsUrl;
    data['public_gists_url'] = publicGistsUrl;
    data['rate_limit_url'] = rateLimitUrl;
    data['repository_url'] = repositoryUrl;
    data['repository_search_url'] = repositorySearchUrl;
    data['current_user_repositories_url'] = currentUserRepositoriesUrl;
    data['starred_url'] = starredUrl;
    data['starred_gists_url'] = starredGistsUrl;
    data['topic_search_url'] = topicSearchUrl;
    data['user_url'] = userUrl;
    data['user_organizations_url'] = userOrganizationsUrl;
    data['user_repositories_url'] = userRepositoriesUrl;
    data['user_search_url'] = userSearchUrl;
    return data;
  }
}
