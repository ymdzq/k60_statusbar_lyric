.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$2;
.super Ljava/lang/Object;
.source "MiuiHeadsetRename.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$2;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
