.class final Lcom/android/settings/notification/SilentModeSeekBarPreference$H;
.super Landroid/os/Handler;
.source "SilentModeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SilentModeSeekBarPreference;Landroid/os/Looper;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference$H;->this$0:Lcom/android/settings/notification/SilentModeSeekBarPreference;

    .line 184
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 189
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference$H;->this$0:Lcom/android/settings/notification/SilentModeSeekBarPreference;

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->-$$Nest$mupdateRemainTimeSeekbar(Lcom/android/settings/notification/SilentModeSeekBarPreference;)V

    :goto_0
    return-void
.end method
