var NewChatMessage = React.createClass({
  getInitialstate: function() {
    return {
      messages: ''
    }
  },
  submit: function () {
    $.ajax({
      url: '/chats',
      method: 'POST',
      dataType: 'JSON',
      data: {
        chat: {
          messages: this.state.messages,
        }
      },
      success: function (response) {
        console.log('Your chat has been accepted by the autobot moderator.');
      }.bind(this)
    });
    this.setState({messages: ''});
  },
  handleChange: function (e) {
    this.setState({
      messages: e.target.value
    });
  },
  render: function () {
    return (<div className='row'>
              <div className='col s12'>
                <section className='newchatmessage'>
                  <div className='input-field col s9 c9'>
                    <input placeholder='Enter a scary monster message here'
                    id="chat[messages]"
                    type="text"
                    autofocus="true"
                    className="validate"
                    onChange={this.handleChange}
                    value={this.state.messages}/>
                  </div>
                  <div className='input-field col s1 c1'>
                    <button onClick={this.submit} className="btn waves-effect-light btn-small" type="submit" name="action">
                      <i className="material-icons right">scare!</i>
                    </button>
                  </div>
                </section>
              </div>
            </div>);
  }
  });
