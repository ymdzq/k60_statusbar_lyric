.class Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$2;
.super Landroid/database/ContentObserver;
.source "ScreenEnhanceEngineMemcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;Landroid/os/Handler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$2;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$2;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {p0}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgethandler(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x456

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
