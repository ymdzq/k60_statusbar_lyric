.class Lcom/android/settings/emergency/ui/SosExitAlertActivity$7;
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

    .line 172
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$7;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$7;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    const-string p1, "120"

    invoke-static {p0, p1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->-$$Nest$mcall(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Ljava/lang/String;)V

    return-void
.end method
