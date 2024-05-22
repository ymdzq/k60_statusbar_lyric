.class public final synthetic Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 2
    check-cast p1, Lcom/android/systemui/tuner/SelectablePreference;

    .line 4
    sget v0, Lcom/android/systemui/tuner/ShortcutPicker;->$r8$clinit:I

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/tuner/SelectablePreference;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 15
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 16
    return-void
    .line 19
.end method
