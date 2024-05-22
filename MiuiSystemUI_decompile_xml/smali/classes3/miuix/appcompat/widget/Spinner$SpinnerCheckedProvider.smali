.class public final Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# instance fields
.field public final mSpinner:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final isChecked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 2
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    .line 4
    move-result p0

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method
