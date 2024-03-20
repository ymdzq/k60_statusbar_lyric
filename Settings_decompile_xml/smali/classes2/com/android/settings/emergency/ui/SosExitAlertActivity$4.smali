.class Lcom/android/settings/emergency/ui/SosExitAlertActivity$4;
.super Ljava/lang/Object;
.source "SosExitAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$4;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$4;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->-$$Nest$fgetlistPhoneNunbers(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->-$$Nest$mcall(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Ljava/lang/String;)V

    return-void
.end method
