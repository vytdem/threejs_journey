import EventEmitter from "./EventEmitter"

export default class Sizes extends EventEmitter
{
    constructor()
    {
        super()
        
        // Setup
        this.update()

        // Resize
        window.addEventListener('resize', () => 
        {
            this.update()

            this.trigger('resize')
        })
    }

    update()
    {
        this.width = window.innerWidth
        this.height = window.innerHeight
        this.pixelRatio = Math.min(window.devicePixelRatio, 2)
    }
}