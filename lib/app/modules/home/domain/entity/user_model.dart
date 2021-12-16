import 'package:get/get.dart';

class RxUserModel {
  final login = 'login'.obs;
  final id = 'O'.obs;
  final nodeId = 'nodeId'.obs;
  final avatarUrl =
      'https://avatars.githubusercontent.com/u/33176898?s=96&v=4'.obs;
  final gravatarId = 'gravatarId'.obs;
  final url = 'url'.obs;
  final htmlUrl = 'htmlUrl'.obs;
  final followersUrl = 'followersUrl'.obs;
  final followingUrl = 'followingUrl'.obs;
  final gistsUrl = 'gistsUrl'.obs;
  final starredUrl = 'starredUrl'.obs;
  final subscriptionsUrl = 'subscriptionsUrl'.obs;
  final organizationsUrl = 'organizationsUrl'.obs;
  final reposUrl = 'reposUrl'.obs;
  final eventsUrl = 'eventsUrl'.obs;
  final receivedEventsUrl = ''.obs;
  final type = 'type'.obs;
  final siteAdmin = false.obs;
  final name = 'Godzyken'.obs;
  final company = 'Doré.e'.obs;
  final blog = ''.obs;
  final location = ''.obs;
  dynamic email = 'isgodzy@gmail.com'.obs;
  dynamic hireable = 'hireable'.obs;
  final bio = ''.obs;
  dynamic twitterUsername = 'twitterUsername'.obs;
  final publicRepos = 0.obs;
  final publicGists = 0.obs;
  final followers = 0.obs;
  final following = 0.obs;
  final createdAt = 'createdAt'.obs;
  final updatedAt = 'updatedAt'.obs;
}

class UserModel {
  UserModel(
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
      siteAdmin,
      name,
      company,
      blog,
      location,
      email,
      hireable,
      bio,
      twitterUsername,
      publicRepos,
      publicGists,
      followers,
      following,
      createdAt,
      updatedAt});

  final rx = RxUserModel();

  get login => rx.updatedAt.value;
  set login(value) => rx.updatedAt.value = value;

  get id => rx.updatedAt.value;
  set id(value) => rx.id.value = value;

  get nodeId => rx.updatedAt.value;
  set nodeId(value) => rx.nodeId.value = value;

  get avatarUrl => rx.updatedAt.value;
  set avatarUrl(value) => rx.avatarUrl.value = value;

  get gravatarId => rx.updatedAt.value;
  set gravatarId(value) => rx.gravatarId.value = value;

  get url => rx.updatedAt.value;
  set url(value) => rx.url.value = value;

  get htmlUrl => rx.updatedAt.value;
  set htmlUrl(value) => rx.htmlUrl.value = value;

  get followersUrl => rx.updatedAt.value;
  set followersUrl(value) => rx.followersUrl.value = value;

  get followingUrl => rx.updatedAt.value;
  set followingUrl(value) => rx.followingUrl.value = value;

  get gistsUrl => rx.updatedAt.value;
  set gistsUrl(value) => rx.gistsUrl.value = value;

  get starredUrl => rx.updatedAt.value;
  set starredUrl(value) => rx.starredUrl.value = value;

  get subscriptionsUrl => rx.updatedAt.value;
  set subscriptionsUrl(value) => rx.subscriptionsUrl.value = value;

  get organizationsUrl => rx.updatedAt.value;
  set organizationsUrl(value) => rx.organizationsUrl.value = value;

  get reposUrl => rx.updatedAt.value;
  set reposUrl(value) => rx.reposUrl.value = value;

  get eventsUrl => rx.updatedAt.value;
  set eventsUrl(value) => rx.eventsUrl.value = value;

  get receivedEventsUrl => rx.updatedAt.value;
  set receivedEventsUrl(value) => rx.receivedEventsUrl.value = value;

  get type => rx.updatedAt.value;
  set type(value) => rx.type.value = value;

  get siteAdmin => rx.updatedAt.value;
  set siteAdmin(value) => rx.siteAdmin.value = value;

  get name => rx.updatedAt.value;
  set name(value) => rx.name.value = value;

  get company => rx.updatedAt.value;
  set company(value) => rx.company.value = value;

  get blog => rx.updatedAt.value;
  set blog(value) => rx.blog.value = value;

  get location => rx.updatedAt.value;
  set location(value) => rx.location.value = value;

  get email => rx.updatedAt.value;
  set email(value) => rx.email.value = value;

  get hireable => rx.updatedAt.value;
  set hireable(value) => rx.hireable.value = value;

  get bio => rx.updatedAt.value;
  set bio(value) => rx.bio.value = value;

  get twitterUsername => rx.updatedAt.value;
  set twitterUsername(value) => rx.twitterUsername.value = value;

  get publicRepos => rx.updatedAt.value;
  set publicRepos(value) => rx.publicRepos.value = value;

  get publicGists => rx.updatedAt.value;
  set publicGists(value) => rx.publicGists.value = value;

  get followers => rx.updatedAt.value;
  set followers(value) => rx.followers.value = value;

  get following => rx.updatedAt.value;
  set following(value) => rx.following.value = value;

  get createdAt => rx.updatedAt.value;
  set createdAt(value) => rx.createdAt.value = value;

  get updatedAt => rx.updatedAt.value;
  set updatedAt(value) => rx.updatedAt.value = value;

  UserModel.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    twitterUsername = json['twitter_username'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['login'] = login;
    data['id'] = id;
    data['node_id'] = nodeId;
    data['avatar_url'] = avatarUrl;
    data['gravatar_id'] = gravatarId;
    data['url'] = url;
    data['html_url'] = htmlUrl;
    data['followers_url'] = followersUrl;
    data['following_url'] = followingUrl;
    data['gists_url'] = gistsUrl;
    data['starred_url'] = starredUrl;
    data['subscriptions_url'] = subscriptionsUrl;
    data['organizations_url'] = organizationsUrl;
    data['repos_url'] = reposUrl;
    data['events_url'] = eventsUrl;
    data['received_events_url'] = receivedEventsUrl;
    data['type'] = type;
    data['site_admin'] = siteAdmin;
    data['name'] = name;
    data['company'] = company;
    data['blog'] = blog;
    data['location'] = location;
    data['email'] = email;
    data['hireable'] = hireable;
    data['bio'] = bio;
    data['twitter_username'] = twitterUsername;
    data['public_repos'] = publicRepos;
    data['public_gists'] = publicGists;
    data['followers'] = followers;
    data['following'] = following;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }

  static List<UserModel> listFromJson(list) =>
      List<UserModel>.from(list.map((x) => UserModel.fromJson(x)));
}
