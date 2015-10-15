
var Navigation = React.createClass({
  render: function() {
    return (
    <nav>
      <div className="nav-wrapper">
        <ul id="nav-mobile" className="left hide-on-med-and-down">
          <li><a href='/about'>About</a></li>
          <li><a href='/home'>Home</a></li>
          <li><a href='/login'>Login</a></li>
          <li><a href='/logout'>Logout</a></li>
          <li><a href='/chats'>Chats</a></li>
        </ul>
      </div>
    </nav>);
  }
});
