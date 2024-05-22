.class public final synthetic Lcom/android/systemui/Dependency$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dependency$LazyDependencyCreator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Ldagger/Lazy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda7;->f$0:Ldagger/Lazy;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda7;->f$0:Ldagger/Lazy;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_0

    .line 9
    :pswitch_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_1
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_4
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_5
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_7
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_8
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_9
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_a
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_b
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_c
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_d
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_e
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_f
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 86
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :pswitch_10
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_11
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 96
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_12
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_13
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :pswitch_14
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_15
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 116
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_16
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_17
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :pswitch_18
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 131
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :pswitch_19
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 136
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :pswitch_1a
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 141
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :pswitch_1b
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 146
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :pswitch_1c
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 151
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :goto_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 162
.end method
