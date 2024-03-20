.class Lcom/android/settings/applications/IconLoader$BackgroundHandler;
.super Landroid/os/Handler;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/IconLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/IconLoader;Landroid/os/Looper;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->this$0:Lcom/android/settings/applications/IconLoader;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getMessageType(I)I
    .locals 1

    .line 69
    rem-int/lit8 p1, p1, 0xf

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/IconLoader$IconItem;

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/IconLoader$IconItem;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 60
    iget-object v1, p1, Lcom/android/settings/applications/IconLoader$IconItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->this$0:Lcom/android/settings/applications/IconLoader;

    iget-object v0, v0, Lcom/android/settings/applications/IconLoader;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    iput v1, v0, Landroid/os/Message;->what:I

    .line 64
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object p0, p0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->this$0:Lcom/android/settings/applications/IconLoader;

    iget-object p0, p0, Lcom/android/settings/applications/IconLoader;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
