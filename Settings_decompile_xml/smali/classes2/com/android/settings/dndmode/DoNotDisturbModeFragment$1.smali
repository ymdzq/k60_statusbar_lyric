.class Lcom/android/settings/dndmode/DoNotDisturbModeFragment$1;
.super Ljava/lang/Object;
.source "DoNotDisturbModeFragment.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/DoNotDisturbModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/DoNotDisturbModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/DoNotDisturbModeFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment$1;->this$0:Lcom/android/settings/dndmode/DoNotDisturbModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuietModeEnableChange(Z)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment$1;->this$0:Lcom/android/settings/dndmode/DoNotDisturbModeFragment;

    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->-$$Nest$monQuietModeChanged(Lcom/android/settings/dndmode/DoNotDisturbModeFragment;)V

    return-void
.end method
