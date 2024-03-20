.class Lcom/android/settings/edgesuppression/LaySensorWrapper$2;
.super Landroid/os/Handler;
.source "LaySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/edgesuppression/LaySensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;


# direct methods
.method constructor <init>(Lcom/android/settings/edgesuppression/LaySensorWrapper;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0, v0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0, v0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0, v0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0, v0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    :goto_0
    return-void
.end method
