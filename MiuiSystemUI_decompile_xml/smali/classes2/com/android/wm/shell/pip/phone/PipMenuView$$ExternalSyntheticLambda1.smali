.class public final synthetic Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipMenuActionView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuActionView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    .line 2
    sget v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->$r8$clinit:I

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuActionView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
