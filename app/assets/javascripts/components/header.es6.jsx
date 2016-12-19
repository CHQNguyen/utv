class Header extends React.Component {

  constructor(props){
    super(props);

    this.state = {
      message: ""
    }

    this.handleRegister = this.handleRegister.bind(this)
    this.handleLogin = this.handleLogin.bind(this)
    this.handleLogout = this.handleLogout.bind(this)

  }

  handleRegister(data){
    alert(data.message)
    this.clickLogin()
    $(".login-form").show()
  }

  handleLogin(data){
    this.props.handleLogin(data)
  }

  handleLogout(response){
    if (!response.user) {
      this.setState({user: "", loggedIn: false })
      window.location.reload()
      console.log("You've been successfully logged out!")
    }
  }

  render(){
    if (!this.props.loggedIn) {
    return(
      <div>
        <ul>
          <li className="register-button">
            <Register
            handleRegister={this.handleRegister}
            hiddenRegister={this.state.hiddenRegister}/>
          </li>
          <li className="login-button">
            <Login
            handleLogin={this.handleLogin}/>
          </li>
        </ul>
      </div>
      )
  } else {
    return(
      <div>
      <ul>
        <li>
          <h3>{this.props.user.name}</h3>
        </li>
        <li>
          <Logout
            handleLogout={this.handleLogout}/>
        </li>
        </ul>
      </div>
      )
  }
  }
}
