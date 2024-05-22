.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $keyboardShortcutsLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1$1;->$keyboardShortcutsLayout:Landroid/widget/FrameLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1$1;->$keyboardShortcutsLayout:Landroid/widget/FrameLayout;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    return-void
    .line 9
.end method
