.class Lcom/android/settings/FullScreenDisplaySettings$13$1;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/FullScreenDisplaySettings$13;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings$13;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$13$1;->this$1:Lcom/android/settings/FullScreenDisplaySettings$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 573
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$13$1;->this$1:Lcom/android/settings/FullScreenDisplaySettings$13;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$13;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/FullScreenDisplaySettings;->setScreenButtonHidden(Z)V

    return-void
.end method
