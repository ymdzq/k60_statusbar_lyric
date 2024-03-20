.class Lcom/android/settings/applications/IconLoader$1;
.super Landroid/os/Handler;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/IconLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/IconLoader;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader$1;->this$0:Lcom/android/settings/applications/IconLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 35
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 36
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/IconLoader$IconItem;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/applications/IconLoader$IconItem;->refreshIcon()V

    :cond_0
    return-void
.end method
