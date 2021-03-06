import { ApiEndpoint } from '/constants/api/api-endpoints'
import { App } from '/constants/app'
import urlcat from 'urlcat'

export class APIUtil {
    static async use(
        endpoint: ApiEndpoint,
        params: Record<text, any> = {},
        body?: SafeObject | null
    ): Promise<Response> {
        return APIUtil.fetch(endpoint.method, urlcat(App.api.baseUrl, endpoint.path, params), body)
    }

    static async fetch(method: text, url: text, body?: SafeObject | null): Promise<Response> {
        return fetch(url, {
            method: method,
            cache: 'no-cache',
            redirect: 'follow',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: body ? JSON.stringify(body) : undefined
        })
    }
}
