.class Lcom/android/settings/emergency/ui/SosLaunchingActivity$1;
.super Ljava/lang/Object;
.source "SosLaunchingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosLaunchingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
