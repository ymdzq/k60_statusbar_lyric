.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 8
    move-result-object p1

    .line 11
    :goto_0
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 12
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 14
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    .line 16
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 19
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public final onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final onSessionDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 8
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 10
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 13
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 16
    :cond_0
    return-void
    .line 18
.end method
