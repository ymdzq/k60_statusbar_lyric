.class Lcom/android/settings/connection/MiMirrorController$1;
.super Landroid/content/BroadcastReceiver;
.source "MiMirrorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connection/MiMirrorController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connection/MiMirrorController;


# direct methods
.method constructor <init>(Lcom/android/settings/connection/MiMirrorController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/connection/MiMirrorController$1;->this$0:Lcom/android/settings/connection/MiMirrorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/connection/MiMirrorController$1;->this$0:Lcom/android/settings/connection/MiMirrorController;

    invoke-static {p0}, Lcom/android/settings/connection/MiMirrorController;->-$$Nest$fgetmPreference(Lcom/android/settings/connection/MiMirrorController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/connection/MiMirrorController;->-$$Nest$mupdateRightValue(Lcom/android/settings/connection/MiMirrorController;Landroidx/preference/Preference;)V

    return-void
.end method
