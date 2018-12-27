// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension LexRuntimeService {

    public struct GenericAttachment: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attachmentLinkUrl", required: false, type: .string), 
            AWSShapeMember(label: "title", required: false, type: .string), 
            AWSShapeMember(label: "buttons", required: false, type: .list), 
            AWSShapeMember(label: "subTitle", required: false, type: .string), 
            AWSShapeMember(label: "imageUrl", required: false, type: .string)
        ]
        /// The URL of an attachment to the response card.
        public let attachmentLinkUrl: String?
        /// The title of the option.
        public let title: String?
        /// The list of options to show to the user.
        public let buttons: [Button]?
        /// The subtitle shown below the title.
        public let subTitle: String?
        /// The URL of an image that is displayed to the user.
        public let imageUrl: String?

        public init(attachmentLinkUrl: String? = nil, title: String? = nil, buttons: [Button]? = nil, subTitle: String? = nil, imageUrl: String? = nil) {
            self.attachmentLinkUrl = attachmentLinkUrl
            self.title = title
            self.buttons = buttons
            self.subTitle = subTitle
            self.imageUrl = imageUrl
        }

        private enum CodingKeys: String, CodingKey {
            case attachmentLinkUrl = "attachmentLinkUrl"
            case title = "title"
            case buttons = "buttons"
            case subTitle = "subTitle"
            case imageUrl = "imageUrl"
        }
    }

    public struct ResponseCard: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "version", required: false, type: .string), 
            AWSShapeMember(label: "contentType", required: false, type: .enum), 
            AWSShapeMember(label: "genericAttachments", required: false, type: .list)
        ]
        /// The version of the response card format.
        public let version: String?
        /// The content type of the response.
        public let contentType: ContentType?
        /// An array of attachment objects representing options.
        public let genericAttachments: [GenericAttachment]?

        public init(version: String? = nil, contentType: ContentType? = nil, genericAttachments: [GenericAttachment]? = nil) {
            self.version = version
            self.contentType = contentType
            self.genericAttachments = genericAttachments
        }

        private enum CodingKeys: String, CodingKey {
            case version = "version"
            case contentType = "contentType"
            case genericAttachments = "genericAttachments"
        }
    }

    public struct PostContentResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "audioStream"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "contentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "slotToElicit", location: .header(locationName: "x-amz-lex-slot-to-elicit"), required: false, type: .string), 
            AWSShapeMember(label: "messageFormat", location: .header(locationName: "x-amz-lex-message-format"), required: false, type: .enum), 
            AWSShapeMember(label: "intentName", location: .header(locationName: "x-amz-lex-intent-name"), required: false, type: .string), 
            AWSShapeMember(label: "dialogState", location: .header(locationName: "x-amz-lex-dialog-state"), required: false, type: .enum), 
            AWSShapeMember(label: "inputTranscript", location: .header(locationName: "x-amz-lex-input-transcript"), required: false, type: .string), 
            AWSShapeMember(label: "audioStream", required: false, type: .blob), 
            AWSShapeMember(label: "sessionAttributes", location: .header(locationName: "x-amz-lex-session-attributes"), required: false, type: .string), 
            AWSShapeMember(label: "slots", location: .header(locationName: "x-amz-lex-slots"), required: false, type: .string), 
            AWSShapeMember(label: "message", location: .header(locationName: "x-amz-lex-message"), required: false, type: .string)
        ]
        /// Content type as specified in the Accept HTTP header in the request.
        public let contentType: String?
        ///  If the dialogState value is ElicitSlot, returns the name of the slot for which Amazon Lex is eliciting a value. 
        public let slotToElicit: String?
        /// The format of the response message. One of the following values:    PlainText - The message contains plain UTF-8 text.    CustomPayload - The message is a custom format for the client.    SSML - The message contains text formatted for voice output.    Composite - The message contains an escaped JSON object containing one or more messages from the groups that messages were assigned to when the intent was created.  
        public let messageFormat: MessageFormatType?
        /// Current user intent that Amazon Lex is aware of.
        public let intentName: String?
        /// Identifies the current state of the user interaction. Amazon Lex returns one of the following values as dialogState. The client can optionally use this information to customize the user interface.     ElicitIntent - Amazon Lex wants to elicit the user's intent. Consider the following examples:   For example, a user might utter an intent ("I want to order a pizza"). If Amazon Lex cannot infer the user intent from this utterance, it will return this dialog state.     ConfirmIntent - Amazon Lex is expecting a "yes" or "no" response.  For example, Amazon Lex wants user confirmation before fulfilling an intent. Instead of a simple "yes" or "no" response, a user might respond with additional information. For example, "yes, but make it a thick crust pizza" or "no, I want to order a drink." Amazon Lex can process such additional information (in these examples, update the crust type slot or change the intent from OrderPizza to OrderDrink).     ElicitSlot - Amazon Lex is expecting the value of a slot for the current intent.   For example, suppose that in the response Amazon Lex sends this message: "What size pizza would you like?". A user might reply with the slot value (e.g., "medium"). The user might also provide additional information in the response (e.g., "medium thick crust pizza"). Amazon Lex can process such additional information appropriately.     Fulfilled - Conveys that the Lambda function has successfully fulfilled the intent.     ReadyForFulfillment - Conveys that the client has to fulfill the request.     Failed - Conveys that the conversation with the user failed.   This can happen for various reasons, including that the user does not provide an appropriate response to prompts from the service (you can configure how many times Amazon Lex can prompt a user for specific information), or if the Lambda function fails to fulfill the intent.   
        public let dialogState: DialogState?
        /// The text used to process the request. If the input was an audio stream, the inputTranscript field contains the text extracted from the audio stream. This is the text that is actually processed to recognize intents and slot values. You can use this information to determine if Amazon Lex is correctly processing the audio that you send.
        public let inputTranscript: String?
        /// The prompt (or statement) to convey to the user. This is based on the bot configuration and context. For example, if Amazon Lex did not understand the user intent, it sends the clarificationPrompt configured for the bot. If the intent requires confirmation before taking the fulfillment action, it sends the confirmationPrompt. Another example: Suppose that the Lambda function successfully fulfilled the intent, and sent a message to convey to the user. Then Amazon Lex sends that message in the response. 
        public let audioStream: Data?
        ///  Map of key/value pairs representing the session-specific context information. 
        public let sessionAttributes: String?
        /// Map of zero or more intent slots (name/value pairs) Amazon Lex detected from the user input during the conversation. Amazon Lex creates a resolution list containing likely values for a slot. The value that it returns is determined by the valueSelectionStrategy selected when the slot type was created or updated. If valueSelectionStrategy is set to ORIGINAL_VALUE, the value provided by the user is returned, if the user value is similar to the slot values. If valueSelectionStrategy is set to TOP_RESOLUTION Amazon Lex returns the first value in the resolution list or, if there is no resolution list, null. If you don't specify a valueSelectionStrategy, the default is ORIGINAL_VALUE.
        public let slots: String?
        /// The message to convey to the user. The message can come from the bot's configuration or from a Lambda function. If the intent is not configured with a Lambda function, or if the Lambda function returned Delegate as the dialogAction.type its response, Amazon Lex decides on the next course of action and selects an appropriate message from the bot's configuration based on the current interaction context. For example, if Amazon Lex isn't able to understand user input, it uses a clarification prompt message. When you create an intent you can assign messages to groups. When messages are assigned to groups Amazon Lex returns one message from each group in the response. The message field is an escaped JSON string containing the messages. For more information about the structure of the JSON string returned, see msg-prompts-formats. If the Lambda function returns a message, Amazon Lex passes it to the client in its response.
        public let message: String?

        public init(contentType: String? = nil, slotToElicit: String? = nil, messageFormat: MessageFormatType? = nil, intentName: String? = nil, dialogState: DialogState? = nil, inputTranscript: String? = nil, audioStream: Data? = nil, sessionAttributes: String? = nil, slots: String? = nil, message: String? = nil) {
            self.contentType = contentType
            self.slotToElicit = slotToElicit
            self.messageFormat = messageFormat
            self.intentName = intentName
            self.dialogState = dialogState
            self.inputTranscript = inputTranscript
            self.audioStream = audioStream
            self.sessionAttributes = sessionAttributes
            self.slots = slots
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "Content-Type"
            case slotToElicit = "x-amz-lex-slot-to-elicit"
            case messageFormat = "x-amz-lex-message-format"
            case intentName = "x-amz-lex-intent-name"
            case dialogState = "x-amz-lex-dialog-state"
            case inputTranscript = "x-amz-lex-input-transcript"
            case audioStream = "audioStream"
            case sessionAttributes = "x-amz-lex-session-attributes"
            case slots = "x-amz-lex-slots"
            case message = "x-amz-lex-message"
        }
    }

    public struct Button: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "value", required: true, type: .string), 
            AWSShapeMember(label: "text", required: true, type: .string)
        ]
        /// The value sent to Amazon Lex when a user chooses the button. For example, consider button text "NYC." When the user chooses the button, the value sent can be "New York City."
        public let value: String
        /// Text that is visible to the user on the button.
        public let text: String

        public init(value: String, text: String) {
            self.value = value
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case value = "value"
            case text = "text"
        }
    }

    public struct PostTextResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "responseCard", required: false, type: .structure), 
            AWSShapeMember(label: "slotToElicit", required: false, type: .string), 
            AWSShapeMember(label: "messageFormat", required: false, type: .enum), 
            AWSShapeMember(label: "intentName", required: false, type: .string), 
            AWSShapeMember(label: "dialogState", required: false, type: .enum), 
            AWSShapeMember(label: "sessionAttributes", required: false, type: .map), 
            AWSShapeMember(label: "slots", required: false, type: .map), 
            AWSShapeMember(label: "message", required: false, type: .string)
        ]
        /// Represents the options that the user has to respond to the current prompt. Response Card can come from the bot configuration (in the Amazon Lex console, choose the settings button next to a slot) or from a code hook (Lambda function). 
        public let responseCard: ResponseCard?
        /// If the dialogState value is ElicitSlot, returns the name of the slot for which Amazon Lex is eliciting a value. 
        public let slotToElicit: String?
        /// The format of the response message. One of the following values:    PlainText - The message contains plain UTF-8 text.    CustomPayload - The message is a custom format defined by the Lambda function.    SSML - The message contains text formatted for voice output.    Composite - The message contains an escaped JSON object containing one or more messages from the groups that messages were assigned to when the intent was created.  
        public let messageFormat: MessageFormatType?
        /// The current user intent that Amazon Lex is aware of.
        public let intentName: String?
        ///  Identifies the current state of the user interaction. Amazon Lex returns one of the following values as dialogState. The client can optionally use this information to customize the user interface.     ElicitIntent - Amazon Lex wants to elicit user intent.  For example, a user might utter an intent ("I want to order a pizza"). If Amazon Lex cannot infer the user intent from this utterance, it will return this dialogState.    ConfirmIntent - Amazon Lex is expecting a "yes" or "no" response.   For example, Amazon Lex wants user confirmation before fulfilling an intent.  Instead of a simple "yes" or "no," a user might respond with additional information. For example, "yes, but make it thick crust pizza" or "no, I want to order a drink". Amazon Lex can process such additional information (in these examples, update the crust type slot value, or change intent from OrderPizza to OrderDrink).    ElicitSlot - Amazon Lex is expecting a slot value for the current intent.  For example, suppose that in the response Amazon Lex sends this message: "What size pizza would you like?". A user might reply with the slot value (e.g., "medium"). The user might also provide additional information in the response (e.g., "medium thick crust pizza"). Amazon Lex can process such additional information appropriately.     Fulfilled - Conveys that the Lambda function configured for the intent has successfully fulfilled the intent.     ReadyForFulfillment - Conveys that the client has to fulfill the intent.     Failed - Conveys that the conversation with the user failed.   This can happen for various reasons including that the user did not provide an appropriate response to prompts from the service (you can configure how many times Amazon Lex can prompt a user for specific information), or the Lambda function failed to fulfill the intent.   
        public let dialogState: DialogState?
        /// A map of key-value pairs representing the session-specific context information.
        public let sessionAttributes: [String: String]?
        ///  The intent slots that Amazon Lex detected from the user input in the conversation.  Amazon Lex creates a resolution list containing likely values for a slot. The value that it returns is determined by the valueSelectionStrategy selected when the slot type was created or updated. If valueSelectionStrategy is set to ORIGINAL_VALUE, the value provided by the user is returned, if the user value is similar to the slot values. If valueSelectionStrategy is set to TOP_RESOLUTION Amazon Lex returns the first value in the resolution list or, if there is no resolution list, null. If you don't specify a valueSelectionStrategy, the default is ORIGINAL_VALUE.
        public let slots: [String: String]?
        /// The message to convey to the user. The message can come from the bot's configuration or from a Lambda function. If the intent is not configured with a Lambda function, or if the Lambda function returned Delegate as the dialogAction.type its response, Amazon Lex decides on the next course of action and selects an appropriate message from the bot's configuration based on the current interaction context. For example, if Amazon Lex isn't able to understand user input, it uses a clarification prompt message. When you create an intent you can assign messages to groups. When messages are assigned to groups Amazon Lex returns one message from each group in the response. The message field is an escaped JSON string containing the messages. For more information about the structure of the JSON string returned, see msg-prompts-formats. If the Lambda function returns a message, Amazon Lex passes it to the client in its response.
        public let message: String?

        public init(responseCard: ResponseCard? = nil, slotToElicit: String? = nil, messageFormat: MessageFormatType? = nil, intentName: String? = nil, dialogState: DialogState? = nil, sessionAttributes: [String: String]? = nil, slots: [String: String]? = nil, message: String? = nil) {
            self.responseCard = responseCard
            self.slotToElicit = slotToElicit
            self.messageFormat = messageFormat
            self.intentName = intentName
            self.dialogState = dialogState
            self.sessionAttributes = sessionAttributes
            self.slots = slots
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case responseCard = "responseCard"
            case slotToElicit = "slotToElicit"
            case messageFormat = "messageFormat"
            case intentName = "intentName"
            case dialogState = "dialogState"
            case sessionAttributes = "sessionAttributes"
            case slots = "slots"
            case message = "message"
        }
    }

    public enum DialogState: String, CustomStringConvertible, Codable {
        case elicitintent = "ElicitIntent"
        case confirmintent = "ConfirmIntent"
        case elicitslot = "ElicitSlot"
        case fulfilled = "Fulfilled"
        case readyforfulfillment = "ReadyForFulfillment"
        case failed = "Failed"
        public var description: String { return self.rawValue }
    }

    public struct PostTextRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "userId", location: .uri(locationName: "userId"), required: true, type: .string), 
            AWSShapeMember(label: "botAlias", location: .uri(locationName: "botAlias"), required: true, type: .string), 
            AWSShapeMember(label: "sessionAttributes", required: false, type: .map), 
            AWSShapeMember(label: "inputText", required: true, type: .string), 
            AWSShapeMember(label: "requestAttributes", required: false, type: .map), 
            AWSShapeMember(label: "botName", location: .uri(locationName: "botName"), required: true, type: .string)
        ]
        /// The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot. At runtime, each request must contain the userID field. To decide the user ID to use for your application, consider the following factors.   The userID field must not contain any personally identifiable information of the user, for example, name, personal identification numbers, or other end user personal information.   If you want a user to start a conversation on one device and continue on another device, use a user-specific identifier.   If you want the same user to be able to have two independent conversations on two different devices, choose a device-specific identifier.   A user can't have two independent conversations with two different versions of the same bot. For example, a user can't have a conversation with the PROD and BETA versions of the same bot. If you anticipate that a user will need to have conversation with two different versions, for example, while testing, include the bot alias in the user ID to separate the two conversations.  
        public let userId: String
        /// The alias of the Amazon Lex bot.
        public let botAlias: String
        /// Application-specific information passed between Amazon Lex and a client application. For more information, see Setting Session Attributes.
        public let sessionAttributes: [String: String]?
        /// The text that the user entered (Amazon Lex interprets this text).
        public let inputText: String
        /// Request-specific information passed between Amazon Lex and a client application. The namespace x-amz-lex: is reserved for special attributes. Don't create any request attributes with the prefix x-amz-lex:. For more information, see Setting Request Attributes.
        public let requestAttributes: [String: String]?
        /// The name of the Amazon Lex bot.
        public let botName: String

        public init(userId: String, botAlias: String, sessionAttributes: [String: String]? = nil, inputText: String, requestAttributes: [String: String]? = nil, botName: String) {
            self.userId = userId
            self.botAlias = botAlias
            self.sessionAttributes = sessionAttributes
            self.inputText = inputText
            self.requestAttributes = requestAttributes
            self.botName = botName
        }

        private enum CodingKeys: String, CodingKey {
            case userId = "userId"
            case botAlias = "botAlias"
            case sessionAttributes = "sessionAttributes"
            case inputText = "inputText"
            case requestAttributes = "requestAttributes"
            case botName = "botName"
        }
    }

    public enum MessageFormatType: String, CustomStringConvertible, Codable {
        case plaintext = "PlainText"
        case custompayload = "CustomPayload"
        case ssml = "SSML"
        case composite = "Composite"
        public var description: String { return self.rawValue }
    }

    public struct PostContentRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "inputStream"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "contentType", location: .header(locationName: "Content-Type"), required: true, type: .string), 
            AWSShapeMember(label: "botAlias", location: .uri(locationName: "botAlias"), required: true, type: .string), 
            AWSShapeMember(label: "accept", location: .header(locationName: "Accept"), required: false, type: .string), 
            AWSShapeMember(label: "botName", location: .uri(locationName: "botName"), required: true, type: .string), 
            AWSShapeMember(label: "requestAttributes", location: .header(locationName: "x-amz-lex-request-attributes"), required: false, type: .string), 
            AWSShapeMember(label: "userId", location: .uri(locationName: "userId"), required: true, type: .string), 
            AWSShapeMember(label: "sessionAttributes", location: .header(locationName: "x-amz-lex-session-attributes"), required: false, type: .string), 
            AWSShapeMember(label: "inputStream", required: true, type: .blob)
        ]
        ///  You pass this value as the Content-Type HTTP header.   Indicates the audio format or text. The header value must start with one of the following prefixes:    PCM format, audio data must be in little-endian byte order.   audio/l16; rate=16000; channels=1   audio/x-l16; sample-rate=16000; channel-count=1   audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1; is-big-endian=false      Opus format   audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=256000; frame-size-milliseconds=4     Text format   text/plain; charset=utf-8    
        public let contentType: String
        /// Alias of the Amazon Lex bot.
        public let botAlias: String
        ///  You pass this value as the Accept HTTP header.   The message Amazon Lex returns in the response can be either text or speech based on the Accept HTTP header value in the request.     If the value is text/plain; charset=utf-8, Amazon Lex returns text in the response.     If the value begins with audio/, Amazon Lex returns speech in the response. Amazon Lex uses Amazon Polly to generate the speech (using the configuration you specified in the Accept header). For example, if you specify audio/mpeg as the value, Amazon Lex returns speech in the MPEG format. The following are the accepted values:   audio/mpeg   audio/ogg   audio/pcm   text/plain; charset=utf-8   audio/* (defaults to mpeg)    
        public let accept: String?
        /// Name of the Amazon Lex bot.
        public let botName: String
        /// You pass this value as the x-amz-lex-request-attributes HTTP header. Request-specific information passed between Amazon Lex and a client application. The value must be a JSON serialized and base64 encoded map with string keys and values. The total size of the requestAttributes and sessionAttributes headers is limited to 12 KB. The namespace x-amz-lex: is reserved for special attributes. Don't create any request attributes with the prefix x-amz-lex:. For more information, see Setting Request Attributes.
        public let requestAttributes: String?
        /// The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot. At runtime, each request must contain the userID field. To decide the user ID to use for your application, consider the following factors.   The userID field must not contain any personally identifiable information of the user, for example, name, personal identification numbers, or other end user personal information.   If you want a user to start a conversation on one device and continue on another device, use a user-specific identifier.   If you want the same user to be able to have two independent conversations on two different devices, choose a device-specific identifier.   A user can't have two independent conversations with two different versions of the same bot. For example, a user can't have a conversation with the PROD and BETA versions of the same bot. If you anticipate that a user will need to have conversation with two different versions, for example, while testing, include the bot alias in the user ID to separate the two conversations.  
        public let userId: String
        /// You pass this value as the x-amz-lex-session-attributes HTTP header. Application-specific information passed between Amazon Lex and a client application. The value must be a JSON serialized and base64 encoded map with string keys and values. The total size of the sessionAttributes and requestAttributes headers is limited to 12 KB. For more information, see Setting Session Attributes.
        public let sessionAttributes: String?
        ///  User input in PCM or Opus audio format or text format as described in the Content-Type HTTP header.  You can stream audio data to Amazon Lex or you can create a local buffer that captures all of the audio data before sending. In general, you get better performance if you stream audio data rather than buffering the data locally.
        public let inputStream: Data

        public init(contentType: String, botAlias: String, accept: String? = nil, botName: String, requestAttributes: String? = nil, userId: String, sessionAttributes: String? = nil, inputStream: Data) {
            self.contentType = contentType
            self.botAlias = botAlias
            self.accept = accept
            self.botName = botName
            self.requestAttributes = requestAttributes
            self.userId = userId
            self.sessionAttributes = sessionAttributes
            self.inputStream = inputStream
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "Content-Type"
            case botAlias = "botAlias"
            case accept = "Accept"
            case botName = "botName"
            case requestAttributes = "x-amz-lex-request-attributes"
            case userId = "userId"
            case sessionAttributes = "x-amz-lex-session-attributes"
            case inputStream = "inputStream"
        }
    }

    public enum ContentType: String, CustomStringConvertible, Codable {
        case applicationVndAmazonawsCardGeneric = "application/vnd.amazonaws.card.generic"
        public var description: String { return self.rawValue }
    }

}