.class public final Landroidx/emoji2/text/DefaultGlyphChecker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# static fields
.field public static final sStringBuilder:Ljava/lang/ThreadLocal;


# instance fields
.field public final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    .line 5
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    .line 10
    const/high16 p0, 0x41200000    # 10.0f

    .line 12
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    return-void
    .line 17
.end method
