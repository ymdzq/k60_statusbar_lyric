.class public final Lmiuix/view/inputmethod/InputMethodHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lmiuix/view/inputmethod/InputMethodHelper$1;


# instance fields
.field public final mManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/inputmethod/InputMethodHelper$1;

    .line 2
    invoke-direct {v0}, Lmiuix/view/inputmethod/InputMethodHelper$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/view/inputmethod/InputMethodHelper$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    const-string v0, "input_method"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    iput-object p1, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 17
    return-void
    .line 19
.end method
