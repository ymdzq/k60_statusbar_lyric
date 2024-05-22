.class public abstract Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2
    const/16 v1, 0x3a

    .line 4
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 6
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 9
    const/16 v1, 0x3b

    .line 11
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 13
    return-void
    .line 16
.end method
