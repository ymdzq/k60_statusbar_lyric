.class public final Lmiuix/view/inputmethod/InputMethodHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
