// Auto-generated. Do not edit!

// (in-package rbe500.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class get_joint_velocitiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.j1 = null;
      this.d3 = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
      if (initObj.hasOwnProperty('j1')) {
        this.j1 = initObj.j1
      }
      else {
        this.j1 = 0.0;
      }
      if (initObj.hasOwnProperty('d3')) {
        this.d3 = initObj.d3
      }
      else {
        this.d3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_joint_velocitiesRequest
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float64(obj.vz, buffer, bufferOffset);
    // Serialize message field [j1]
    bufferOffset = _serializer.float64(obj.j1, buffer, bufferOffset);
    // Serialize message field [d3]
    bufferOffset = _serializer.float64(obj.d3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_joint_velocitiesRequest
    let len;
    let data = new get_joint_velocitiesRequest(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j1]
    data.j1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d3]
    data.d3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbe500/get_joint_velocitiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eea7dceb9f8a9e5b845bd7c3a20ff329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 vx
    float64 vy
    float64 vz
    float64 j1
    float64 d3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_joint_velocitiesRequest(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    if (msg.j1 !== undefined) {
      resolved.j1 = msg.j1;
    }
    else {
      resolved.j1 = 0.0
    }

    if (msg.d3 !== undefined) {
      resolved.d3 = msg.d3;
    }
    else {
      resolved.d3 = 0.0
    }

    return resolved;
    }
};

class get_joint_velocitiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta_1_dot = null;
      this.theta_2_dot = null;
      this.d3_dot = null;
    }
    else {
      if (initObj.hasOwnProperty('theta_1_dot')) {
        this.theta_1_dot = initObj.theta_1_dot
      }
      else {
        this.theta_1_dot = 0.0;
      }
      if (initObj.hasOwnProperty('theta_2_dot')) {
        this.theta_2_dot = initObj.theta_2_dot
      }
      else {
        this.theta_2_dot = 0.0;
      }
      if (initObj.hasOwnProperty('d3_dot')) {
        this.d3_dot = initObj.d3_dot
      }
      else {
        this.d3_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_joint_velocitiesResponse
    // Serialize message field [theta_1_dot]
    bufferOffset = _serializer.float64(obj.theta_1_dot, buffer, bufferOffset);
    // Serialize message field [theta_2_dot]
    bufferOffset = _serializer.float64(obj.theta_2_dot, buffer, bufferOffset);
    // Serialize message field [d3_dot]
    bufferOffset = _serializer.float64(obj.d3_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_joint_velocitiesResponse
    let len;
    let data = new get_joint_velocitiesResponse(null);
    // Deserialize message field [theta_1_dot]
    data.theta_1_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_2_dot]
    data.theta_2_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d3_dot]
    data.d3_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbe500/get_joint_velocitiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90f5ea939ed53b23bf097187454966f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 theta_1_dot
    float64 theta_2_dot
    float64 d3_dot
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_joint_velocitiesResponse(null);
    if (msg.theta_1_dot !== undefined) {
      resolved.theta_1_dot = msg.theta_1_dot;
    }
    else {
      resolved.theta_1_dot = 0.0
    }

    if (msg.theta_2_dot !== undefined) {
      resolved.theta_2_dot = msg.theta_2_dot;
    }
    else {
      resolved.theta_2_dot = 0.0
    }

    if (msg.d3_dot !== undefined) {
      resolved.d3_dot = msg.d3_dot;
    }
    else {
      resolved.d3_dot = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: get_joint_velocitiesRequest,
  Response: get_joint_velocitiesResponse,
  md5sum() { return '4095fce8d49a55d344a8363f4d43907a'; },
  datatype() { return 'rbe500/get_joint_velocities'; }
};
