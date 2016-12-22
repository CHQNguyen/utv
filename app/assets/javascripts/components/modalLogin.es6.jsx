class ModalLogin extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      showModal: false
    }
  this.close = this.close.bind(this)
  this.open = this.open.bind(this)
  }

  close() {
    this.setState({ showModal: false });
  }

  open() {
    this.setState({ showModal: true });
  }

  render () {
    var Modal = ReactBootstrap.Modal;
    var Button = ReactBootstrap.Button;
    return (
      <div>
      <Button className="login-button" onClick={this.open} bsStyle="primary">Login</Button>
      <Modal show={this.state.showModal} onHide={this.close}>
        <Modal.Header closeButton>
          <Modal.Title>Login</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <LoginForm
          afterLogin={this.props.afterLogin}
          handleLogin={this.props.handleLogin}/>
        </Modal.Body>
      </Modal>
      </div>
    );
  }
}
