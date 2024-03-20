.class Lcom/android/settings/emergency/ui/SosLaunchingActivity$2;
.super Ljava/lang/Object;
.source "SosLaunchingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 83
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$2;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$2;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    return-void
.end method
