.class Lcom/android/settings/FullScreenDisplaySettings$15;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$15;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$15;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fputmClickOnDialog(Lcom/android/settings/FullScreenDisplaySettings;Z)V

    return-void
.end method
