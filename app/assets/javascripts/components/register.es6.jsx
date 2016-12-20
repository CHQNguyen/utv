class Register extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      errors: "",
      showModal: false
    }

    this.verifyChange = this.verifyChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.close = this.close.bind(this)
    this.open = this.open.bind(this)

  }

  close() {
    this.setState({ showModal: false });
  }

  open() {
    this.setState({ showModal: true });
  }

  verifyChange(){
    var password = this.refs.password.value
    var vPassword = this.refs.verifyPassword.value
    if (vPassword === "") {
      this.setState({errors: ""})
    }else if (password != vPassword) {
      this.setState({errors: "Your passwords don't match."})
    } else {
      this.setState({errors: ""})
    }
  }

  handleSubmit(e){
    e.preventDefault();
    this.setState({ showModal: false });
    const data = {
      user: {
        full_name: this.refs.fullName.value,
        email:     this.refs.eMail.value,
        password:  this.refs.password.value
      }
    }
    if (this.state.errors === "") {
      $.ajax({
        url: "/user/register",
        type: "post",
        data: data
      })
      .done((response)=>{
        this.props.handleRegister(response)
        $(".register-form").each(function(){
          this.reset()
        });
      })
    }
  }

  render () {
    var Modal = ReactBootstrap.Modal;
    var Button = ReactBootstrap.Button;
    return (
      <div className="register">
      <h4 onClick={this.open}>Register</h4>
      <Modal show={this.state.showModal} onHide={this.close}>
      <Modal.Header closeButton>
       <Modal.Title>Register</Modal.Title>
      </Modal.Header>
      <Modal.Body>
      <form className="register-form">
        <table>
          <tbody>
            <tr>
              <td><label>Full Name:</label></td>
              <td><input
              type="text"
              name="user[full_name]"
              placeholder="Full Name"
              ref="fullName"/></td>
            </tr>
            <tr>
              <td><label>Email:</label></td>
              <td><input
              type="text"
              name="user[email]"
              placeholder="example@gmail.com"
              ref="eMail"/></td>
            </tr>
            <tr>
              <td><label>Password:</label></td>
              <td><input
              type="password"
              name="user[password]"
              placeholder="Password"
              ref="password"/></td>
            </tr>
            <tr>
              <td><label>Verify Password:</label></td>
              <td><input
              type="password"
              name="verify_password"
              placeholder="Password"
              onChange={this.verifyChange}
              ref="verifyPassword"/></td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colSpan="2">{this.state.errors}</td>
              <td></td>
            </tr>
          </tfoot>
        </table>
              <input type="submit" value="Register" onClick={this.handleSubmit} />
      </form>
      </Modal.Body>
        </Modal>
      </div>
      );
  }

}

