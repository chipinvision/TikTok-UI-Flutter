class ChatModel{
  final String name;
  final String msg;
  final String avatar;

  ChatModel({required this.name, required this.msg, required this.avatar});

}

List<ChatModel> dummyData = [
  ChatModel(
    name: 'steve.45',
    msg: 'Your new video is really informative',
    avatar: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  ChatModel(
    name: 'thatgorgeousgal',
    msg: 'How is my new video?',
    avatar: 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  ChatModel(
    name: 'ghost_in_my_body',
    msg: 'Please accept my request',
    avatar: 'https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),

];