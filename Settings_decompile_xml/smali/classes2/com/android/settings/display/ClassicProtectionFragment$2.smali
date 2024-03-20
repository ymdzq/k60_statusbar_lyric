.class Lcom/android/settings/display/ClassicProtectionFragment$2;
.super Ljava/lang/Object;
.source "ClassicProtectionFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ClassicProtectionFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ClassicProtectionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ClassicProtectionFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/display/ClassicProtectionFragment$2;->this$0:Lcom/android/settings/display/ClassicProtectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTrackingTouch()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment$2;->this$0:Lcom/android/settings/display/ClassicProtectionFragment;

    invoke-static {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->-$$Nest$mupdateHintPref(Lcom/android/settings/display/ClassicProtectionFragment;)V

    return-void
.end method
