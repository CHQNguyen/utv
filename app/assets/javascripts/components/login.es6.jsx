class Login extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      errors: "",
      hidden: true,
      eMail: this.props.eMail
    }
    this.handleLogin = this.handleLogin.bind(this)
    this.handleClick = this.handleClick.bind(this)
    this.handleChange = this.handleChange.bind(this)
  }


  handleLogin(e){
    e.preventDefault();

    const payload = {
      user: {
        email:     this.refs.eMail.value,
        password:  this.refs.password.value
      }
    }
    if (this.state.errors === "") {
      $.ajax({
        url: "/user/login",
        type: "post",
        data: payload
      })
      .done((response)=>{
        this.props.handleLogin(response)
      })
    }
  }

  componentDidMount(){
    $(".login-form").hide()
  }

  handleClick() {
    if (this.state.hidden === true) {
      $(".login-form").show()
      this.setState({hidden: false})
    }
    else {
     $(".login-form").hide()
     this.setState({hidden: true})
    }
  }

  handleChange(){
    this.setState({eMail: this.refs.eMail.value})
  }

  render(){
    return(
      <div className="login">
      <button className="btn btn-danger" onClick={this.handleClick}>Login</button>
      <form className="login-form">
        <table>
          <tbody>
            <tr>
              <td><label>Email:</label></td>
              <td><input
              type="text"
              name="user[email]"
              placeholder="example@gmail.com"
              ref="eMail"
              /></td>
            </tr>
            <tr>
              <td><label>Password:</label></td>
              <td><input
              type="password"
              name="user[password]"
              placeholder="Password"
              ref="password"/></td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colSpan="2">{this.state.errors}</td>
              <td></td>
            </tr>
          </tfoot>
        </table>
              <input type="submit" value="Login" onClick={this.handleLogin} />
      </form>
      </div>
      );
  }

}
