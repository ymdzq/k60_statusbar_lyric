.class public Lcom/android/settings/stylus/MiuiStylusVideoView;
.super Landroid/widget/VideoView;
.source "MiuiStylusVideoView.java"


# instance fields
.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/MiuiStylusVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/MiuiStylusVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 31
    invoke-super {p0}, Landroid/widget/VideoView;->onFinishInflate()V

    return-void
.end method
