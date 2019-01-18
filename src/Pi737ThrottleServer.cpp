
#include <websocketpp/config/asio_no_tls.hpp>
#include <websocketpp/server.hpp>
#include <iostream>

using namespace std;

int main(int argc, char **argv) {

	typedef websocketpp::server<websocketpp::config::asio> server;

	cout << "Hello, world!" << endl;
	return 0;
}
