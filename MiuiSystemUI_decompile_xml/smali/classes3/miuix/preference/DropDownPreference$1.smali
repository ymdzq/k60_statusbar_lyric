.class public final Lmiuix/preference/DropDownPreference$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    if-ltz p3, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 4
    iget-object p2, p1, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 6
    array-length p4, p2

    .line 8
    if-ge p3, p4, :cond_0

    .line 9
    aget-object p2, p2, p3

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 15
    new-instance p3, Lmiuix/preference/DropDownPreference$1$1;

    .line 17
    invoke-direct {p3, p0, p2}, Lmiuix/preference/DropDownPreference$1$1;-><init>(Lmiuix/preference/DropDownPreference$1;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "DropDownPreference"

    .line 26
    const-string p1, "Illegal Position In Entry Values\' Array. "

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void
    .line 33
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
