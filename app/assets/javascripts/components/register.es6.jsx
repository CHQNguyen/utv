class Register extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      errors: "",
      hidden: true
    }

    this.verifyChange = this.verifyChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.handleClick = this.handleClick.bind(this)

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

  componentDidMount(){
    $(".register-form").hide()
  }

  handleClick() {
    if (this.state.hidden === true) {
      $(".register-form").show()
      this.setState({hidden: false})
    }
    else {
     $(".register-form").hide()
     this.setState({hidden: true})
    }
  }


  render () {
    return (
      <div className="register">
      <button className="btn btn-danger" onClick={this.handleClick}>Register</button>
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
      </div>
      );
  }

}

// Register.propTypes = {
//   user: React.PropTypes.object.isRequired
// }
