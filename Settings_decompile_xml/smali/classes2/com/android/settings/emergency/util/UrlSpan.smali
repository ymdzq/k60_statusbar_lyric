.class public Lcom/android/settings/emergency/util/UrlSpan;
.super Landroid/text/style/ClickableSpan;
.source "UrlSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;
    }
.end annotation


# instance fields
.field private mOnClickListener:Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/emergency/util/UrlSpan;->mOnClickListener:Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/emergency/util/UrlSpan;->mOnClickListener:Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x1

    .line 24
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const-string p0, "#0d84ff"

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
