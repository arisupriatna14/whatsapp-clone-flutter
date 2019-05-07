class StatusModel {
  final String name;
  final String date;
  final String avatarurl;

  StatusModel({this.name, this.date, this.avatarurl});
}

List<StatusModel> dataStatus = [
  StatusModel(
    name: 'John Doe',
    date: 'Today, 13.00',
    avatarurl: 'https://images.unsplash.com/photo-1516554429352-1a0d00ce742c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  ),
  StatusModel(
    name: 'John Due',
    date: 'Today, 13.30',
    avatarurl: 'https://images.unsplash.com/photo-1516644731290-cdde1b8e8d69?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'
  ),
  StatusModel(
    name: 'John Die',
    date: 'Today, 13.33',
    avatarurl: 'https://images.unsplash.com/photo-1511250503134-89501c53a815?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'
  ),
  StatusModel(
    name: 'John Doe',
    date: 'Today, 13.00',
    avatarurl: 'https://images.unsplash.com/photo-1548343874-ea7b35b1fd4a?ixlib=rb-1.2.1&auto=format&fit=crop&w=2691&q=80'
  ),
  StatusModel(
    name: 'John Due',
    date: 'Today, 13.30',
    avatarurl: 'https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=656&q=80'
  )
];