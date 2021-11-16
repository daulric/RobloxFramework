import discord
from discord.ext import commands

Prefix = "!"
bot = commands.Bot(command_prefix=Prefix)
token = ""

@bot.command()
async def hello(ctx):
    await ctx.send("hello")

@bot.command()
async def on_message(message):
    if message.startswith("Hello"):
        await message.send("Hello")

bot.run(token)