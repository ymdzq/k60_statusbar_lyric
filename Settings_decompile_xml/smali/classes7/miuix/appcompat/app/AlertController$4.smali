.class Lmiuix/appcompat/app/AlertController$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->installContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$4;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;IIII)V
    .locals 0

    .line 456
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$4;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method
