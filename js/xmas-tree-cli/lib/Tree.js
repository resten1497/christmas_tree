function _extends() { _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; }; return _extends.apply(this, arguments); }

const React = require('react');

const {
  useState,
  useEffect
} = require('react');

const {
  Box,
  Text,
  Newline
} = require('ink');

function TwinklingText({
  children,
  colors = [],
  interval = 200,
  ...props
}) {
  const [on, setOn] = useState(false);
  useEffect(() => {
    const timer = setInterval(() => setOn(v => !v), interval);
    return () => clearInterval(timer);
  }, []);
  return /*#__PURE__*/React.createElement(Text, _extends({
    color: on ? colors[0] : colors[1]
  }, props), children);
}

function Tree() {
  const starColors = ['yellow', ''];
  const lightColors = ['red', 'white'];
  return /*#__PURE__*/React.createElement(Box, {
    flexDirection: "column",
    padding: 2
  }, /*#__PURE__*/React.createElement(TwinklingText, {
    colors: starColors
  }, "    _\\/_"), /*#__PURE__*/React.createElement(TwinklingText, {
    colors: starColors
  }, "     /\\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, "     /\\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, "    /  \\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, "    /~~\\", /*#__PURE__*/React.createElement(TwinklingText, {
    colors: lightColors,
    interval: 300
  }, "o")), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, "   /", /*#__PURE__*/React.createElement(TwinklingText, {
    colors: lightColors
  }, "o"), "   \\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, "  /~~*~~~\\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, " ", /*#__PURE__*/React.createElement(TwinklingText, {
    colors: lightColors,
    interval: 150
  }, "o"), "/    ", /*#__PURE__*/React.createElement(TwinklingText, {
    colors: lightColors,
    interval: 200
  }, "o"), " \\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, " /~~~~~~~~\\"), /*#__PURE__*/React.createElement(Text, {
    color: "green"
  }, "/__*_______\\"), /*#__PURE__*/React.createElement(Text, null, "     ||"), /*#__PURE__*/React.createElement(Text, null, "   \\====/"), /*#__PURE__*/React.createElement(Text, null, "    \\__/"));
}

;
module.exports = Tree;