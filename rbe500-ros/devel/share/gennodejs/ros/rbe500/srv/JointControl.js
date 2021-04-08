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

class JointControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
      this.goal_position = null;
      this.goal_velocity = null;
      this.kp = null;
      this.ki = null;
      this.kd = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_name')) {
        this.joint_name = initObj.joint_name
      }
      else {
        this.joint_name = '';
      }
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = 0.0;
      }
      if (initObj.hasOwnProperty('goal_velocity')) {
        this.goal_velocity = initObj.goal_velocity
      }
      else {
        this.goal_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = 0.0;
      }
      if (initObj.hasOwnProperty('ki')) {
        this.ki = initObj.ki
      }
      else {
        this.ki = 0.0;
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlRequest
    // Serialize message field [joint_name]
    bufferOffset = _serializer.string(obj.joint_name, buffer, bufferOffset);
    // Serialize message field [goal_position]
    bufferOffset = _serializer.float64(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [goal_velocity]
    bufferOffset = _serializer.float64(obj.goal_velocity, buffer, bufferOffset);
    // Serialize message field [kp]
    bufferOffset = _serializer.float64(obj.kp, buffer, bufferOffset);
    // Serialize message field [ki]
    bufferOffset = _serializer.float64(obj.ki, buffer, bufferOffset);
    // Serialize message field [kd]
    bufferOffset = _serializer.float64(obj.kd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlRequest
    let len;
    let data = new JointControlRequest(null);
    // Deserialize message field [joint_name]
    data.joint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_position]
    data.goal_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_velocity]
    data.goal_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kp]
    data.kp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ki]
    data.ki = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kd]
    data.kd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joint_name.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbe500/JointControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3d59c5166a351c624cb61d94e16d813';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_name
    float64 goal_position
    float64 goal_velocity
    float64 kp
    float64 ki
    float64 kd
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlRequest(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = ''
    }

    if (msg.goal_position !== undefined) {
      resolved.goal_position = msg.goal_position;
    }
    else {
      resolved.goal_position = 0.0
    }

    if (msg.goal_velocity !== undefined) {
      resolved.goal_velocity = msg.goal_velocity;
    }
    else {
      resolved.goal_velocity = 0.0
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = 0.0
    }

    if (msg.ki !== undefined) {
      resolved.ki = msg.ki;
    }
    else {
      resolved.ki = 0.0
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = 0.0
    }

    return resolved;
    }
};

class JointControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlResponse
    let len;
    let data = new JointControlResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbe500/JointControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: JointControlRequest,
  Response: JointControlResponse,
  md5sum() { return 'e3d59c5166a351c624cb61d94e16d813'; },
  datatype() { return 'rbe500/JointControl'; }
};
