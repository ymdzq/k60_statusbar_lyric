.class Lcom/android/settings/MiuiTetherSettings$1$1;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings$1;->onStateChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MiuiTetherSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings$1;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$1$1;->this$1:Lcom/android/settings/MiuiTetherSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$1$1;->this$1:Lcom/android/settings/MiuiTetherSettings$1;

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mstartTethering(Lcom/android/settings/MiuiTetherSettings;I)V

    return-void
.end method
