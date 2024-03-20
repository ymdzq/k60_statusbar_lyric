.class Lcom/android/settings/notification/SilentModeDeleteSettings$1;
.super Ljava/lang/Object;
.source "SilentModeDeleteSettings.java"

# interfaces
.implements Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeDeleteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeDeleteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeDeleteSettings;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$1;->this$0:Lcom/android/settings/notification/SilentModeDeleteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$1;->this$0:Lcom/android/settings/notification/SilentModeDeleteSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SilentModeDeleteSettings;->-$$Nest$fgetmDeletedRuleId(Lcom/android/settings/notification/SilentModeDeleteSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$1;->this$0:Lcom/android/settings/notification/SilentModeDeleteSettings;

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeDeleteSettings;->-$$Nest$mupdateControls(Lcom/android/settings/notification/SilentModeDeleteSettings;)V

    return-void
.end method
