.class public final Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultConfig;
.super Landroidx/emoji2/text/EmojiCompat$Config;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    .line 2
    invoke-direct {v0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, v0}, Landroidx/emoji2/text/EmojiCompat$Config;-><init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V

    .line 7
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    .line 11
    return-void
    .line 13
.end method
