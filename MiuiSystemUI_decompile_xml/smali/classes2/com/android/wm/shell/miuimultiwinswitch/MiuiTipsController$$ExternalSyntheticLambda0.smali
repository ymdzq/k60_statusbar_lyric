.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->onInit()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 14
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->$r8$lambda$XoLpmNRL6XoGyIk4ELKDEYwpkAU(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;)V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
