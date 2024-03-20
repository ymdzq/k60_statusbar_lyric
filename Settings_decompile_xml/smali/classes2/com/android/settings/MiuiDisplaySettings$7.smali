.class Lcom/android/settings/MiuiDisplaySettings$7;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$7;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$7;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$menableScreenOnProximitySensor(Lcom/android/settings/MiuiDisplaySettings;Z)V

    return-void
.end method
