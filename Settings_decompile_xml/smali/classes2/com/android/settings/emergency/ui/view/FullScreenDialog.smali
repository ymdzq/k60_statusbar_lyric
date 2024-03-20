.class public Lcom/android/settings/emergency/ui/view/FullScreenDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "FullScreenDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/android/settings/emergency/ui/view/FullScreenDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 6

    .line 29
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 31
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 33
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/FullScreenDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sos_dialog_window_background:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x1302

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p0, 0x1

    :try_start_0
    new-array v1, p0, [Ljava/lang/Class;

    .line 41
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 42
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string/jumbo v4, "setBlurBehindRadius"

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v5, 0x4b

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p0, v3

    .line 42
    invoke-static {v2, v0, v4, v1, p0}, Lcom/android/settings/emergency/ui/ReflectUtil;->callAnyObjectMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
