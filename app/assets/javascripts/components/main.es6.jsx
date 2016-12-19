class Main extends React.Component {

  constructor(props) {
    super(props);

    this.state={
      loggedIn: false,
      user: ""
    }

    this.handleLogin = this.handleLogin.bind(this)

  }

  handleLogin(data){
    if (!data.name) {
      alert(data.message)
    } else {
      this.setState({user: data, loggedIn: true})
      }
  }

  render(){
    return (
      <div>
        <Navbar />

        <Header
          handleLogin={this.handleLogin}
          loggedIn={this.state.loggedIn}
          user={this.state.user}/>
        <Body
          loggedIn={this.state.loggedIn}/>
      </div>
      )
  }

}
