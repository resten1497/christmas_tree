use std::io::prelude::*;
use std::net::TcpListener;

const CHRISTMAS_TREE: &str = r#"
*       _\/_   *
     *   /\
         /\
 *      /  \     *
        /~~\o
  *    /o   \ 
      /~~*~~~\       *
     o/    o \
     /~~~~~~~~\~`
    /__*_______\
*        ||        *
         ||       
"#;

fn main() {
    let listener = TcpListener::bind("127.0.0.1:8080").unwrap();
    for stream in listener.incoming() {
        let mut stream = stream.unwrap();

        stream.read(&mut [0; 1024]).unwrap();
        stream
            .write(format!("HTTP/1.1 200 OK\r\n{}\r\n", CHRISTMAS_TREE).as_bytes())
            .unwrap();
        stream.flush().unwrap();
    }
}
