.class public Lcom/android/settings/applications/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/IconLoader$BackgroundHandler;,
        Lcom/android/settings/applications/IconLoader$IconItem;
    }
.end annotation


# instance fields
.field private mBackgroundHandler:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBgThreadName:Ljava/lang/String;

.field mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/applications/IconLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/IconLoader$1;-><init>(Lcom/android/settings/applications/IconLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/IconLoader;->mMainHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader;->mBgThreadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/widget/ImageView;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;I)V
    .locals 1

    .line 101
    new-instance v0, Lcom/android/settings/applications/IconLoader$IconItem;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/applications/IconLoader$IconItem;-><init>(Landroid/widget/ImageView;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundHandler:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->getMessageType(I)I

    move-result p1

    .line 103
    iget-object p2, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundHandler:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 104
    iput p1, p2, Landroid/os/Message;->what:I

    .line 105
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object p0, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundHandler:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->mBgThreadName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;-><init>(Lcom/android/settings/applications/IconLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundHandler:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundHandler:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/IconLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
