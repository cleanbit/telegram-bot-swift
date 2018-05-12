// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias GetChatCompletion = (_ result: Chat?, _ error: DataTaskError?) -> ()

    /// Use this method to get up to date information about the chat (current name of the user for one-on-one conversations, current username of a user, group or channel, etc.). Returns a Chat object on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    /// - Returns: Chat on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#getchat>
    @discardableResult
    public func getChatSync(
            chat_id: ChatId,
            _ parameters: [String: Any?] = [:]) -> Chat? {
        return requestSync("getChat", defaultParameters["getChat"], parameters, [
            "chat_id": chat_id])
    }

    /// Use this method to get up to date information about the chat (current name of the user for one-on-one conversations, current username of a user, group or channel, etc.). Returns a Chat object on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    /// - Returns: Chat on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#getchat>
    public func getChatAsync(
            chat_id: ChatId,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: GetChatCompletion? = nil) {
        return requestAsync("getChat", defaultParameters["getChat"], parameters, [
            "chat_id": chat_id],
            queue: queue, completion: completion)
    }
}
